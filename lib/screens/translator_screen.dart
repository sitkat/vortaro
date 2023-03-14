import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  var chosenValue = "ru";
  String string = "Welcome to converter";
  final translator = GoogleTranslator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text(string),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              onChanged: (String? value) {
                setState(() {
                  string = value.toString();
                  chosenValue = 'ru';
                });
              },
            ),
            DropdownButton(
              items: <String>['en', 'ru', 'eo']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  child: Text(value),
                  value: value,
                );
              }).toList(),
              onChanged: (String? value) async {
                var trans = await translator.translate(string,
                    from: chosenValue, to: value.toString());
                setState(() {
                  string = trans.text;
                  chosenValue = value.toString();
                });
              },
            ),
            Text(string, style: TextStyle(fontSize: 20),)
          ],
        ),
      ),
    );
  }
}
