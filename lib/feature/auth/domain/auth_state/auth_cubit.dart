import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vortaro/feature/auth/domain/auth_repository.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this.authRepository) : super(AuthState.notAuthrized());
  final AuthRepository authRepository;

  Future<void> signIn(
      {required String username, required String password}) async {
    emit(AuthState.waiting());
    try {
      final UserEntity userEntity =
          await authRepository.signIn(password: password, username: username);
      emit(AuthState.authrized(userEntity));
    } catch (error) {
      emit(AuthState.error(error));
      rethrow;
    }
  }
}
