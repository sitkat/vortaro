abstract class WordRepository {
  Future fetchWords(int fetchLimit, int offset);

  Future fetchWord(String id);

  Future deleteWord(String id);

  Future createWord(Map args);

  Future updateWord(String id, Map args);

  Future fetchFavorites();

  Future deleteFromFavorite(String id);

  Future addToFavorite(Map args);
}
