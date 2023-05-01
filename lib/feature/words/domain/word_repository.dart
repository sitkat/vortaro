abstract class WordRepository {
  Future fetchWords();

  Future fetchWord(String id);

  Future deleteWord(String id);

  Future createWord(Map args);
}
