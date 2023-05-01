import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

part 'detail_word_state.dart';

part 'detail_word_cubit.freezed.dart';

class DetailWordCubit extends Cubit<DetailWordState> {
  DetailWordCubit(this.wordRepository, this.id)
      : super(const DetailWordState());

  final WordRepository wordRepository;
  final String id;

  Future<void> fetchWord() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await wordRepository.fetchWord(id).then((value) {
      emit(state.copyWith(
          wordEntity: value,
          asyncSnapshot: const AsyncSnapshot.withData(
              ConnectionState.done, "Успешное получение слова")));
    }).catchError((error) {
      addError(error);
    });
  }

  Future<void> deleteWord() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await wordRepository.deleteWord(id).then((value) {
      emit(state.copyWith(
          asyncSnapshot: const AsyncSnapshot.withData(
              ConnectionState.done, "Успешное удаление слова")));
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
}
