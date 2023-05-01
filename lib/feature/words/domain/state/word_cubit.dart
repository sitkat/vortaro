import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:vortaro/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

part 'word_state.dart';

part 'word_cubit.freezed.dart';

part 'word_cubit.g.dart';

class WordCubit extends HydratedCubit<WordState> {
  WordCubit(this.wordRepository, this.authCubit)
      : super(const WordState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) => fetchWords(),
        notAuthorized: (value) => logOut(),
      );
    });
  }

  final WordRepository wordRepository;
  final AuthCubit authCubit;
  late final StreamSubscription authSub;

  Future<void> fetchWords() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await wordRepository.fetchWords().then((value) {
      final Iterable iterable = value;
      emit(state.copyWith(
          wordList: iterable.map((e) => WordEntity.fromJson(e)).toList(),
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> createWord(Map args) async {
    await wordRepository.createWord(args).then((value) {
      fetchWords();
    }).catchError((error) {
      addError(error);
    });
  }

  void logOut() {
    emit(
      state.copyWith(asyncSnapshot: AsyncSnapshot.nothing(), wordList: []),
    );
  }

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }

  @override
  WordState? fromJson(Map<String, dynamic> json) {
    return WordState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(WordState state) {
    return state.toJson();
  }

  @override
  Future<void> close() {
    authSub.cancel();
    return super.close();
  }
}
