import 'package:injectable/injectable.dart';
import 'package:vortaro/app/domain/app_api.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

@Injectable(as: WordRepository)
class NetWordRepository implements WordRepository {
  final AppApi api;

  NetWordRepository(this.api);

  @override
  Future<Iterable> fetchWords(int fetchLimit, int offset) async {
    try {
      final response = await api.fetchWords(fetchLimit, offset);
      if(response.data is !Iterable ) throw Exception(response.data['message']);
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<WordEntity> fetchWord(String id) async {
    try {
      final response = await api.fetchWord(id);
      return WordEntity.fromJson(response.data);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteWord(String id) async {
    try {
      await api.deleteWord(id);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> createWord(Map args) async {
    try {
      final response = await api.createWord(args);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> updateWord(String id, Map args) async {
    try {
      final response = await api.updateWord(id, args);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Iterable> fetchFavorites() async {
    try {
      final response = await api.fetchFavorites();
      return response.data;
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<String> addToFavorite(Map args) async {
    try {
      final response = await api.addToFavorite(args);
      return response.data["message"];
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future deleteFromFavorite(String id) async {
    try {
      await api.deleteFromFavorite(id);
    } catch (_) {
      rethrow;
    }
  }
}
