import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:vortaro/feature/auth/domain/auth_repository.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

part 'auth_cubit.g.dart';

class AuthCubit extends HydratedCubit<AuthState> {
  AuthCubit(this.authRepository) : super(AuthState.notAuthrized());
  final AuthRepository authRepository;

  Future<void> signIn(
      {required String username, required String password}) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity =
          await authRepository.signIn(password: password, username: username);
      emit(AuthState.authrized(userEntity));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    }
  }

  void logOut() => emit(AuthState.notAuthrized());

  Future<void> signUp(
      {required String username,
      required String password,
      required String email}) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity = await authRepository.signUp(
          password: password, username: username, email: email);
      emit(AuthState.authrized(userEntity));
    } catch (error, stackTrace) {
      addError(error, stackTrace);
    }
  }

  @override
  AuthState? fromJson(Map<String, dynamic> json) {
    final state = AuthState.fromJson(json);
    return state.whenOrNull(
      authrized: (userEntity) => AuthState.authrized(userEntity),
    );
  }

  @override
  Map<String, dynamic>? toJson(AuthState state) {
    return state
            .whenOrNull(
              authrized: (userEntity) => AuthState.authrized(userEntity),
            )
            ?.toJson() ??
        AuthState.notAuthrized().toJson();
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(AuthState.error(error));
    super.addError(error, stackTrace);
  }
}
