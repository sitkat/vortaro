import 'package:flutter_tts/flutter_tts.dart';

class AppTts {
  FlutterTts flutterTts = FlutterTts();

  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;

  speak(String text, String language) {
    flutterTts.setLanguage(language);
    flutterTts.setVolume(volume);
    flutterTts.setSpeechRate(rate);
    flutterTts.setPitch(pitch);

    if (text != null) {
      if (text.isNotEmpty) {
        flutterTts.speak(text);
      }
    }
  }
}
