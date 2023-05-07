import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:translator/translator.dart';
import 'package:vortaro/app/ui/components/app_icon_button.dart';
import 'package:vortaro/app/ui/components/app_snack_bar.dart';
import 'package:vortaro/app/utils/app_tts.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class TranslatorScreen extends StatefulWidget {
  const TranslatorScreen({Key? key}) : super(key: key);

  @override
  State<TranslatorScreen> createState() => _TranslatorScreenState();
}

class _TranslatorScreenState extends State<TranslatorScreen> {
  stt.SpeechToText _speech = stt.SpeechToText();
  bool isListening = false;
  double confidence = 1.0;

  var chosenValueFrom = 'ru';
  var chosenValueTo = 'eo';

  String txtTranslated = '';
  final translator = GoogleTranslator();

  TextEditingController textInputEditingController = TextEditingController();

  void _refreshTranslation(String value) async {
    var trans = await translator.translate(value,
        from: chosenValueFrom, to: chosenValueTo);
    setState(() {
      txtTranslated = trans.text;
    });
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
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _speech = stt.SpeechToText();
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
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          const Text('Русский'),
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
                            const InputDecoration(hintText: 'Введите текст'),
                        onChanged: (String value) async {
                          if (!isListening) {
                            if (value.isEmpty ||
                                textInputEditingController.text.isEmpty) {
                              txtTranslated = "";
                            } else {
                              _refreshTranslation(value.toString());
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
                          const Text('Esperanto'),
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
                                              context, "Скопировано"));
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
