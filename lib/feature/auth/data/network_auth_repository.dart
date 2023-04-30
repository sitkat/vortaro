import 'package:injectable/injectable.dart';
import 'package:vortaro/app/data/dio_container.dart';
import 'package:vortaro/feature/auth/data/dto/user_dto.dart';
import 'package:vortaro/feature/auth/domain/auth_repository.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';

@Injectable(as: AuthRepository)
class NetworkAuthRepository implements AuthRepository {
  final DioContainer dioContainer;

  NetworkAuthRepository(this.dioContainer);

  @override
  Future getProfile() async {
    try {
      final response = await dioContainer.dio.get("/auth/user");
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future passwordUpdate(
      {required String oldPassword, required String newPassword}) {
    // TODO: implement passwordUpdate
    throw UnimplementedError();
  }

  @override
  Future refreshToken({String? refreshToken}) async {
    try {
      final response = await dioContainer.dio.post("/auth/token/$refreshToken");
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<UserEntity> signIn(
      {required String password, required String username}) async {
    try {
      final response = await dioContainer.dio.post("/auth/token",
          data: {"username": username, "password": password});
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future signUp({
    required String password,
    required String username,
    required String email,
  }) async {
    try {
      final response = await dioContainer.dio.put("/auth/token",
          data: {"username": username, "password": password, "email": email});
      return UserDto.fromJson(response.data["data"]).toEntity();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future userUpdate({String? username, String? email}) {
    // TODO: implement userUpdate
    throw UnimplementedError();
  }
}
