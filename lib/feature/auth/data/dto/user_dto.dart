import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';

part 'user_dto.g.dart';

@JsonSerializable()
class UserDto {
  final dynamic id;
  final dynamic username;
  final dynamic email;
  final dynamic accessToken;
  final dynamic refreshToken;

  UserDto({
    this.id,
    this.username,
    this.email,
    this.accessToken,
    this.refreshToken,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  Map<String, dynamic> toJson() => _$UserDtoToJson(this);

  UserEntity toEntity() {
    return UserEntity(
      id: id,
      email: email.toString(),
      username: username.toString(),
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
