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
  SpeechToText speech = SpeechToText();
  bool isListening = false;
  double confidence = 1.0;

  var textChosenValueFrom = 'Русский';
  var textChosenValueTo = 'Esperanto';
  var chosenValueFrom = 'ru';
  var chosenValueTo = 'eo';
  var hintTextValueFrom = 'Введите текст';
  var textBtnCopySnackBar = 'Скопировано';

  final translator = GoogleTranslator();

  bool convertLang = false;

  TextEditingController textInputEditingController = TextEditingController();
  TextEditingController textOutputEditingController = TextEditingController();

  Future<dynamic> _refreshTranslation(String value) async {
    var trans = await translator.translate(value,
        from: chosenValueFrom, to: chosenValueTo);
    setState(() {
      if (textInputEditingController.text.trim().isNotEmpty) {
        textOutputEditingController.text = trans.text;
      } else {
        textOutputEditingController.clear();
      }
    });
  }

  void _convertLang() {
    setState(() {
      textInputEditingController.text = textOutputEditingController.text;
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

  @override
  void initState() {
    super.initState();
    speech = SpeechToText();
    textOutputEditingController.text = "";
  }

  @override
  Widget build(BuildContext context) {
    AppTts appTts = AppTts();
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Esperanto", style: theme.textTheme.displayLarge),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
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
                          AvatarGlow(
                            animate: isListening,
                            glowColor: Colors.black,
                            duration: const Duration(milliseconds: 1500),
                            repeatPauseDuration:
                                const Duration(milliseconds: 100),
                            repeat: true,
                            endRadius: 20,
                            child: GestureDetector(
                              onTapDown: (details) async {
                                if (!isListening) {
                                  textOutputEditingController.text = "";
                                  var available = await speech.initialize();
                                  if (available) {
                                    setState(() {
                                      isListening = true;
                                      speech.listen(
                                        onResult: (result) {
                                          setState(() {
                                            textInputEditingController.text =
                                                result.recognizedWords;
                                          });
                                        },
                                      );
                                    });
                                  }
                                }
                              },
                              onTapUp: (details) {
                                setState(() => isListening = false);
                                speech.stop();
                                _refreshTranslation(
                                    textInputEditingController.text);
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                foregroundColor: Colors.black,
                                radius: 25,
                                child: Icon(
                                    isListening ? Icons.mic : Icons.mic_none),
                              ),
                            ),
                          ),
                        ],
                      ),
                      TextField(
                        controller: textInputEditingController,
                        decoration: InputDecoration(
                          hintText: hintTextValueFrom,
                          suffixIcon: IconButton(
                            icon: const Icon(
                              Icons.close,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              if (textInputEditingController.text != "") {
                                setState(() {
                                  textInputEditingController.clear();
                                  textOutputEditingController.clear();
                                });
                              }
                            },
                          ),
                        ),
                        onChanged: (String value) async {
                          if (!isListening) {
                            await _refreshTranslation(value.trim().toString());
                          }
                        },
                        minLines: 1,
                        maxLines: 6,
                        maxLength: 150,
                      ),
                      const SizedBox(height: 10),
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
                              appTts.speak(textOutputEditingController.text,
                                  chosenValueTo);
                            },
                            icon: const Icon(Icons.volume_down_outlined),
                          ),
                        ],
                      ),
                      Text(
                        textOutputEditingController.text,
                        maxLines: 5,
                      ),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                if (textOutputEditingController
                                    .text.isNotEmpty) {
                                  Clipboard.setData(
                                          ClipboardData(
                                              text: textOutputEditingController
                                                  .text))
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
