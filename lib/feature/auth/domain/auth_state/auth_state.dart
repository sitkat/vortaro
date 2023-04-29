part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState.notAuthrized() = _$AuthStateNotAuthrized;

  factory AuthState.authrized(UserEntity userEntity) = _$AuthStateAuthrized;

  factory AuthState.waiting() = _$AuthStateWaiting;

  factory AuthState.error(dynamic error) = _$AuthStateError;

  factory AuthState.fromJson(Map<String, dynamic> json) =>
      _$AuthStateFromJson(json);
}
