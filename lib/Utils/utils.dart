class Utils {
  String stressWord(String string) {
    if (string.contains("`")) {
      // Маленькие
      if (string.contains("`а")) {
        return string.replaceAll("`а", "а́");
      }
      if (string.contains("`е")) {
        return string.replaceAll("`е", "е́");
      }
      if (string.contains("`и")) {
        return string.replaceAll("`и", "и́");
      }
      if (string.contains("`о")) {
        return string.replaceAll("`о", "о́");
      }
      if (string.contains("`у")) {
        return string.replaceAll("`у", "у́");
      }
      // if (string.contains("'у")) {
      //   return string.replaceAll("'у", "у́");
      // }
      if (string.contains("`ы")) {
        return string.replaceAll("`ы", "ы́");
      }
      if (string.contains("`э")) {
        return string.replaceAll("`э", "э́");
      }
      if (string.contains("`ю")) {
        return string.replaceAll("`ю", "ю́");
      }
      if (string.contains("`я")) {
        return string.replaceAll("`я", "я́");
      }
      // Большие
      if (string.contains("`А")) {
        return string.replaceAll("`А", "А́");
      }
      if (string.contains("`Е")) {
        return string.replaceAll("`Е", "Е́");
      }
      if (string.contains("`И")) {
        return string.replaceAll("`И", "И́");
      }
      if (string.contains("`О")) {
        return string.replaceAll("`О", "О́");
      }
      if (string.contains("`У")) {
        return string.replaceAll("`У", "У́");
      }
      if (string.contains("`Ы")) {
        return string.replaceAll("`Ы", "Ы́");
      }
      if (string.contains("`Э")) {
        return string.replaceAll("`Э", "Э́");
      }
      if (string.contains("`Ю")) {
        return string.replaceAll("`Ю", "Ю́");
      }
      if (string.contains("`Я")) {
        return string.replaceAll("`Я", "Я́");
      }
    }
    return string;
  }
}
