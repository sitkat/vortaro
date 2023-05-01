import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:vortaro/app/domain/app_api.dart';
import 'package:vortaro/app/domain/app_config.dart';

import 'auth_interceptor.dart';

@Singleton(as: AppApi)
class DioAppApi implements AppApi {
  late final Dio dio;
  late final Dio dioTokens;

  DioAppApi(AppConfig appConfig) {
    final options = BaseOptions(
      baseUrl: appConfig.baseUrl,
      connectTimeout: 15000,
    );
    dio = Dio(options);
    dioTokens = Dio(options);
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
      dioTokens.interceptors.add(PrettyDioLogger());
    }
    dio.interceptors.add(AuthInterceptor());
  }

  @override
  Future<Response> getProfile() {
    try {
      return dio.get("/auth/user");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> passwordUpdate(
      {required String oldPassword, required String newPassword}) {
    return dio.put("/auth/user", queryParameters: {
      "oldPassword": oldPassword,
      "newPassword": newPassword
    });
  }

  @override
  Future<Response> refreshToken({String? refreshToken}) {
    try {
      return dioTokens.post("/auth/token/$refreshToken");
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signIn(
      {required String password, required String username}) {
    try {
      return dio.post("/auth/token",
          data: {"username": username, "password": password});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> signUp(
      {required String password,
      required String username,
      required String email}) {
    try {
      return dio.put("/auth/token",
          data: {"username": username, "password": password, "email": email});
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<Response> userUpdate({String? username, String? email}) {
    return dio.post("/auth/user", data: {"username": username, "email": email});
  }

  @override
  Future request(String path) {
    try {
      return dio.request(path);
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future fetch(RequestOptions requestOptions) {
    return dioTokens.fetch(requestOptions);
  }

  @override
  Future fetchWords() {
    return dio.get("/auth/word");
  }

  @override
  Future fetchWord(String id) {
    return dio.get("/auth/word/$id");
  }

  @override
  Future deleteWord(String id) {
    return dio.delete("/auth/word/$id");
  }

  @override
  Future createWord(Map args) {
    return dio.post("/auth/word", data: {
      "title": args["title"],
      "translation": args["translation"],
      "description": args["description"],
    });
  }
}
