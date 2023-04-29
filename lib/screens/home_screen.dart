import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/UI/app_router/custom_router.dart';
import 'package:vortaro/Utils/utils.dart';
import 'package:vortaro/data_base/data_base_helper.dart';
import 'package:vortaro/model/word.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> {
  var _helper;

  List<Map<String, dynamic>> _words = [];
  List<Map<String, dynamic>> _items = [];

  TextEditingController textSearchEditingController = TextEditingController();

  void refreshWords() async {
    final data = await _helper.getWords();
    setState(() {
      _words = data;
      _items = _words;
      // _isLoading = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _helper = DbHelper.instance;
    refreshWords();
    textSearchEditingController.text = "";
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
        _items = <Map<String, dynamic>>[];
        _items.addAll(dummyListData);
      });
      return;
    } else {
      setState(() {
        refreshWords();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Utils utils = Utils();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esperanto'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.pushNamed(context, createWordRoute),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: textSearchEditingController,
              onChanged: (value) {
                setState(() {
                  filterSearch(value);
                });
              },
              decoration: InputDecoration(
                hintText: 'Поиск...',
                labelText: 'Поиск',
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
                itemCount: _items.length,
                itemBuilder: (context, i) {
                  Word word = Word.toFromMap(_items[i]);
                  return Card(
                    color: Colors.grey.shade300,
                    margin: const EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(
                        utils.stressWord(word.title),
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      subtitle: Text(utils.stressWord(word.translation)),
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
                                  _helper.onDeleteWord(word.id);
                                  refreshWords();
                                  textSearchEditingController.text = "";
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
