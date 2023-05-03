import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:vortaro/app/ui/components/app_icon_button.dart';
import 'package:vortaro/app/utils/app_tts.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  var chosenValueFrom = 'ru';
  var chosenValueTo = 'eo';

  String _txtInput = '';
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
    AppTts appTts = AppTts();
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text('Русский', textAlign: TextAlign.start),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.swap_horiz),
                          iconSize: 20,
                          splashRadius: 10),
                      const Text(
                        'Esperanto',
                        textAlign: TextAlign.end,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade300,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Text('Русский'),
                          AppIconButton(
                            onPressed: () {
                              appTts.speak(_txtInput, chosenValueFrom);
                            },
                            icon: const Icon(Icons.volume_down_outlined),
                          ),
                        ],
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: 'Введите текст'),
                        onChanged: (String? value) async {
                          _refreshTranslation(value.toString());
                          _txtInput = value.toString();
                        },
                      ),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.mic),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Перевести'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.green,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
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
                          AppIconButton(
                            onPressed: () {
                              appTts.speak(_txtTranslated, chosenValueTo);
                            },
                            icon: const Icon(Icons.volume_down_outlined),
                          ),
                        ],
                      ),
                      Text(_txtTranslated),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(onPressed: () {}, icon: Icon(Icons.copy)),
                          // IconButton(
                          //     onPressed: () {},
                          //     icon: Icon(Icons.favorite_border)),
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
