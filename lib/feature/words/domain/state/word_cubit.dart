import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

part 'word_state.dart';

part 'word_cubit.freezed.dart';

part 'word_cubit.g.dart';

class WordCubit extends HydratedCubit<WordState> {
  WordCubit(this.wordRepository)
      : super(const WordState(asyncSnapshot: AsyncSnapshot.nothing()));

  final WordRepository wordRepository;

  Future<void> fetchWords() async {
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
}
