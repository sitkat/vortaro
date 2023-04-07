import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  var chosenValueFrom = 'ru';
  var chosenValueTo = 'eo';

  // var chosenValue = 'ru';
  String _txtTranslated = '';
  final _translator = GoogleTranslator();

  void _refreshTranslation(String value) async {
    var trans = await _translator.translate(value,
        from: chosenValueFrom, to: chosenValueTo);
    setState(() {
      _txtTranslated = trans.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Esperanto'),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Русский', textAlign: TextAlign.start),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.swap_horiz),
                          iconSize: 20,
                          splashRadius: 10),
                      Text(
                        'Esperanto',
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('Русский'),
                          Icon(Icons.volume_down_outlined),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: 'Введите текст'),
                        onChanged: (String? value) async {
                          _refreshTranslation(value.toString());
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.mic),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('Перевести'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                              ))
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Esperanto'),
                          Icon(Icons.volume_down_outlined),
                        ],
                      ),
                      Text(_txtTranslated),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.favorite_border)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
