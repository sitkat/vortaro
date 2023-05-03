import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vortaro/UI/app_router/constants_router.dart';
import 'package:vortaro/UI/app_router/custom_router.dart';
import 'package:vortaro/app/ui/app_loader.dart';
import 'package:vortaro/app/utils/app_utils.dart';
import 'package:vortaro/data_base/data_base_helper.dart';
import 'package:vortaro/model/word.dart';

class WordListNotAuth extends StatefulWidget {
  const WordListNotAuth({Key? key}) : super(key: key);

  @override
  State<WordListNotAuth> createState() {
    return _WordListNotAuthState();
  }
}

class _WordListNotAuthState extends State<WordListNotAuth> {
  TextEditingController textSearchEditingController = TextEditingController();
  var helper;
  List<Map<String, dynamic>> words = [];

  var dummyOffsetList;
  var dummySearchList;

  void initLists() async {
    dummyOffsetList = await helper.getWords();
    dummySearchList = await helper.getSearchedWords();

    setState(() {
      words = dummyOffsetList;
    });
  }

  void refreshWords(String value) async {
    if (value.isEmpty) {
      setState(() {
        words = dummyOffsetList;
      });
    } else {
      var dummyListData = <Map<String, dynamic>>[];
      dummySearchList.forEach((item) {
        var word = Word.toFromMap(item);
        if (word.title.toLowerCase().contains(value.toLowerCase())) {
          dummyListData.add(item);
        }
      });
      setState(() {
        words = [];
        words.addAll(dummyListData);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    helper = DbHelper.instance;
    initLists();
  }

  @override
  Widget build(BuildContext context) {
    AppUtils utils = AppUtils();
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: textSearchEditingController,
              onChanged: (value) {
                refreshWords(value);
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
                itemCount: words.length,
                itemBuilder: (context, i) {
                  Word word = Word.toFromMap(words[i]);
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
                      // trailing: Column(
                      //   children: [
                      //     Expanded(
                      //       child: IconButton(
                      //         icon: const Icon(
                      //           Icons.delete,
                      //           color: Colors.black87,
                      //         ),
                      //         onPressed: () {
                      //           setState(() {
                      //             helper.onDeleteWord(word.id);
                      //             refreshWords("");
                      //             textSearchEditingController.text = "";
                      //           });
                      //         },
                      //       ),
                      //     ),
                      //   ],
                      // ),
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
