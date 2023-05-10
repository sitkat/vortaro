import 'package:dio/dio.dart';

abstract class AppApi {
  Future<dynamic> signUp({
    required String password,
    required String username,
    required String email,
  });

  Future<dynamic> signIn({
    required String password,
    required String username,
  });

  Future<dynamic> getProfile();

  Future<dynamic> userUpdate({
    String? username,
    String? email,
  });

  Future<dynamic> passwordUpdate({
    required String oldPassword,
    required String newPassword,
  });

  Future<dynamic> refreshToken({String? refreshToken});

  Future<dynamic> request(String path);

  Future<dynamic> fetch(RequestOptions requestOptions);

  Future<dynamic> fetchWords(int fetchLimit, int offset);

  Future<dynamic> fetchWord(String id);

  Future<dynamic> deleteWord(String id);

  Future<dynamic> createWord(Map args);

  Future<dynamic> updateWord(String id, Map args);

  Future<dynamic> fetchFavorites();

  Future<dynamic> deleteFromFavorite(String id);

  Future<dynamic> addToFavorite(Map args);
}
