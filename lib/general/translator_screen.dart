import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:translator/translator.dart';
import 'package:vortaro/app/ui/components/app_icon_button.dart';
import 'package:vortaro/app/ui/components/app_snack_bar.dart';
import 'package:vortaro/app/utils/app_tts.dart';
import 'package:speech_to_text/speech_to_text.dart';

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  SpeechToText _speech = SpeechToText();
  bool isListening = false;
  double confidence = 1.0;

  var textChosenValueFrom = 'Русский';
  var textChosenValueTo = 'Esperanto';
  var chosenValueFrom = 'ru';
  var chosenValueTo = 'eo';
  var hintTextValueFrom = 'Введите текст';
  var textBtnCopySnackBar = 'Скопировано';

  String txtTranslated = '';
  final translator = GoogleTranslator();

  bool convertLang = false;

  TextEditingController textInputEditingController = TextEditingController();

  Future<dynamic> _refreshTranslation(String value) async {
    if (value.isEmpty) {
      setState(() {
        txtTranslated = "";
      });
    } else {
      var trans = await translator.translate(value,
          from: chosenValueFrom, to: chosenValueTo);
      setState(() {
        txtTranslated = trans.text;
      });
    }
  }

  void _convertLang() {
    setState(() {
      textInputEditingController.text = txtTranslated;
      if (convertLang) {
        textChosenValueFrom = 'Esperanto';
        textChosenValueTo = 'Русский';
        chosenValueFrom = 'eo';
        chosenValueTo = 'ru';
        hintTextValueFrom = 'Enigu tekston';
        textBtnCopySnackBar = 'Kopiita';
      } else {
        textChosenValueFrom = 'Русский';
        textChosenValueTo = 'Esperanto';
        chosenValueFrom = 'ru';
        chosenValueTo = 'eo';
        hintTextValueFrom = 'Введите текст';
        textBtnCopySnackBar = 'Скопировано';
      }
    });
    _refreshTranslation(textInputEditingController.text);
  }

  void _listen() async {
    if (!isListening) {
      bool available = await _speech.initialize(
        onStatus: (status) => print('onStatus: $status'),
        onError: (errorNotification) => print('onError: $errorNotification'),
      );
      if (available) {
        setState(() {
          isListening = true;
        });
        _speech.listen(
          onResult: (result) => setState(() {
            textInputEditingController.text = result.recognizedWords;
            if (result.hasConfidenceRating && result.confidence > 0) {
              confidence = result.confidence;
            }
          }),
        );
      } else {
        setState(() {
          isListening = false;
          _speech.stop();
          _refreshTranslation(textInputEditingController.text);
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _speech = SpeechToText();
    // isListening = false;
  }

  @override
  Widget build(BuildContext context) {
    AppTts appTts = AppTts();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Esperanto"),
        automaticallyImplyLeading: false,
      ),
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
                      Text(textChosenValueFrom, textAlign: TextAlign.start),
                      IconButton(
                          onPressed: () {
                            convertLang = !convertLang;
                            _convertLang();
                          },
                          icon: const Icon(Icons.swap_horiz),
                          iconSize: 20,
                          splashRadius: 10),
                      Text(
                        textChosenValueTo,
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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(textChosenValueFrom),
                          AppIconButton(
                            onPressed: () {
                              appTts.speak(textInputEditingController.text,
                                  chosenValueFrom);
                            },
                            icon: const Icon(Icons.volume_down_outlined),
                          ),
                        ],
                      ),
                      TextField(
                        controller: textInputEditingController,
                        decoration:
                            InputDecoration(hintText: hintTextValueFrom),
                        onChanged: (String value) async {
                          print(value);
                          if (!isListening) {
                            if (textInputEditingController.text.length == 1){
                              const Duration(milliseconds: 5000);
                            }
                            if (value.trim().isEmpty ||
                                textInputEditingController.text
                                    .trim()
                                    .isEmpty) {
                              setState(() {
                                txtTranslated = "";
                              });
                            } else {
                              await _refreshTranslation(value.trim().toString());
                            }
                          }
                        },
                        minLines: 1,
                        maxLines: 4,
                        maxLength: 100,
                      ),
                      const SizedBox(height: 10),
                      AvatarGlow(
                        repeat: isListening,
                        // showTwoGlows: true,
                        glowColor: Colors.black,
                        duration: const Duration(milliseconds: 1500),
                        endRadius: 20,
                        child: AppIconButton(
                          onPressed: _listen,
                          icon: Icon(isListening ? Icons.mic : Icons.mic_none),
                        ),
                      )
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(textChosenValueTo),
                          AppIconButton(
                            onPressed: () {
                              appTts.speak(txtTranslated, chosenValueTo);
                            },
                            icon: const Icon(Icons.volume_down_outlined),
                          ),
                        ],
                      ),
                      Text(txtTranslated, maxLines: 5),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                if (txtTranslated.isNotEmpty) {
                                  Clipboard.setData(
                                          ClipboardData(text: txtTranslated))
                                      .then((value) =>
                                          AppSnackBar.showSnackBarWithMessage(
                                              context, textBtnCopySnackBar));
                                }
                              },
                              icon: const Icon(Icons.copy)),
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
