import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:vortaro/feature/auth/domain/auth_state/auth_cubit.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

part 'word_state.dart';

part 'word_event.dart';

part 'word_cubit.freezed.dart';

class WordBloc extends Bloc<WordEvent, WordState> {
  WordBloc(this.wordRepository, this.authCubit)
      : super(const WordState(asyncSnapshot: AsyncSnapshot.nothing())) {
    authSub = authCubit.stream.listen((event) {
      event.mapOrNull(
        authorized: (value) {
          this.add(WordEvent.fetchWords());
          this.add(WordEvent.fetchFavorites());
        },
        notAuthorized: (value) => this.add(WordEvent.logOut()),
      );
    });

    on<_WordEventFetchWords>(fetchWords);
    on<_WordEventFetchFavorites>(fetchFavorites);
    on<_WordEventCreateWord>(createWord);
    on<_WordEventUpdateWord>(updateWord);
    on<_WordEventLogOut>(logOut);
  }

  final WordRepository wordRepository;
  final AuthCubit authCubit;
  late final StreamSubscription authSub;

  Future<void> fetchWords(WordEvent event, Emitter emitter) async {
    if (state.asyncSnapshot?.connectionState == ConnectionState.waiting) return;

    emitter(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await wordRepository
        .fetchWords(state.fetchLimit, state.offset)
        .then((value) {
      final Iterable iterable = value;
      final fetchedList = iterable.map((e) => WordEntity.fromJson(e)).toList();
      final mergedList = [...state.wordList, ...fetchedList];
      emitter(state.copyWith(
          offset: state.offset + fetchedList.length,
          wordList: mergedList,
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      stateError(error, emitter);
    });
  }

  Future<void> fetchFavorites(WordEvent event, Emitter emitter) async {
    emitter(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await wordRepository.fetchFavorites().then((value) {
      final Iterable iterable = value;
      emitter(state.copyWith(
          favoriteList:
              iterable.map((e) => FavoriteEntity.fromJson(e)).toList(),
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, true)));
    }).catchError((error) {
      stateError(error, emitter);
    });
  }

  Future<void> createWord(WordEvent event, Emitter emitter) async {
    await wordRepository
        .createWord((event as _WordEventCreateWord).args)
        .then((value) {
      this.add(WordEvent.fetchWords());
    }).catchError((error) {
      stateError(error, emitter);
    });
  }

  Future<void> updateWord(WordEvent event, Emitter emitter) async {
    emitter(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await wordRepository
        .updateWord((event as _WordEventUpdateWord).id, (event).args)
        .then((value) {
      emitter(state.copyWith(
          asyncSnapshot:
              const AsyncSnapshot.withData(ConnectionState.done, "Сохранено")));
      this.add(WordEvent.fetchWords());
    }).catchError((error) {
      stateError(error, emitter);
    });
  }

  void logOut(WordEvent event, Emitter emitter) {
    emitter(const WordState());
  }

  void stateError(Object error, Emitter emitter) {
    emitter(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    addError(error);
  }

  @override
  Future<void> close() {
    authSub.cancel();
    return super.close();
  }
}
