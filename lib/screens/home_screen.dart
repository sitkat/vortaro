import 'package:flutter/material.dart';
import 'package:vortaro/data_base/data_base_helper.dart';
import 'package:vortaro/model/word.dart';
import 'package:vortaro/screens/create_word_screen.dart';
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
        title: Text('Esperanto'),
        // actions: <Widget>[
          // IconButton(
          //   icon: Icon(Icons.language),
          //   onPressed: () => Navigator.of(context)
          //       .push(MaterialPageRoute(builder: (context) => CreateWord())),
          // )
        // ],
      ),
      body: Column(
        children: <Widget>[
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
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  )),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, i) {
                  Word word = Word.toFromMap(items[i]);
                  return Card(
                    margin: EdgeInsets.all(8),
                    child: ListTile(
                      title: Text(word.title),
                      subtitle: Text(word.translation),
                      trailing: Column(
                        children: <Widget>[
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  helper.onDeleteWord(word.id);
                                  _refreshWords();
                                });
                              },
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.edit,
                                color: Colors.green,
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => UpdateWord(word)));
                              },
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailWord(word)));
                      },
                    ),
                  );
                }),
          ),
          FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => CreateWord())),
          ),
        ],
      ),
    );
  }
}
