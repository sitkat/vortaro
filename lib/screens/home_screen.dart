import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/UI/app_router/custom_router.dart';
import 'package:vortaro/data_base/data_base_helper.dart';
import 'package:vortaro/model/word.dart';
import 'package:vortaro/screens/detail_word_screen.dart';
import 'package:vortaro/screens/update_word_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  var helper;

  List<Map<String, dynamic>> _words = [];
  List<Map<String, dynamic>> items = [];

  void _refreshWords() async {
    final data = await helper.getWords();
    setState(() {
      _words = data;
      items = _words;
      // _isLoading = false;
    });
  }

  String _stressWord(String title) {
    if (title.contains("`")) {
      // Маленькие
      if (title.contains("`а")) {
        return title.replaceAll("`а", "а́");
      }
      if (title.contains("`е")) {
        return title.replaceAll("`е", "е́");
      }
      if (title.contains("`и")) {
        return title.replaceAll("`и", "и́");
      }
      if (title.contains("`о")) {
        return title.replaceAll("`о", "о́");
      }
      if (title.contains("`у")) {
        return title.replaceAll("`у", "у́");
      }
      if (title.contains("`ы")) {
        return title.replaceAll("`ы", "ы́");
      }
      if (title.contains("`э")) {
        return title.replaceAll("`э", "э́");
      }
      if (title.contains("`ю")) {
        return title.replaceAll("`ю", "ю́");
      }
      if (title.contains("`я")) {
        return title.replaceAll("`я", "я́");
      }
      // Большие
      if (title.contains("`А")) {
        return title.replaceAll("`А", "А́");
      }
      if (title.contains("`Е")) {
        return title.replaceAll("`Е", "Е́");
      }
      if (title.contains("`И")) {
        return title.replaceAll("`И", "И́");
      }
      if (title.contains("`О")) {
        return title.replaceAll("`О", "О́");
      }
      if (title.contains("`У")) {
        return title.replaceAll("`У", "У́");
      }
      if (title.contains("`Ы")) {
        return title.replaceAll("`Ы", "Ы́");
      }
      if (title.contains("`Э")) {
        return title.replaceAll("`Э", "Э́");
      }
      if (title.contains("`Ю")) {
        return title.replaceAll("`Ю", "Ю́");
      }
      if (title.contains("`Я")) {
        return title.replaceAll("`Я", "Я́");
      }
    }
    return title;
  }

  @override
  void initState() {
    super.initState();
    helper = DbHelper.instance;
    _refreshWords();
  }

  void filterSearch(String query) async {
    var dummySearchList = _words;
    if (query.isNotEmpty) {
      var dummyListData = <Map<String, dynamic>>[];
      dummySearchList.forEach((item) {
        var word = Word.toFromMap(item);
        if (word.title.toLowerCase().contains(query.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        items = <Map<String, dynamic>>[];
        items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        _refreshWords();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esperanto'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.of(context).pushNamed('/create-word'),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              onChanged: (value) {
                setState(() {
                  filterSearch(value);
                });
              },
              decoration: InputDecoration(
                hintText: 'Search...',
                labelText: 'Search',
                labelStyle: const TextStyle(color: Colors.black38),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.black38,
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.black38),
                  borderRadius: BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, i) {
                  Word word = Word.toFromMap(items[i]);
                  return Card(
                    color: Colors.grey.shade300,
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(
                        _stressWord(word.title),
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(word.translation),
                      trailing: Column(
                        children: [
                          Expanded(
                            child: IconButton(
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.black87,
                              ),
                              onPressed: () {
                                setState(() {
                                  helper.onDeleteWord(word.id);
                                  _refreshWords();
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, detailWordRoute,
                            arguments: WordRouteArguments(wordArguments: word));
                      },
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
