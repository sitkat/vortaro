import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

part 'detail_favorite_state.dart';

part 'detail_favorite_cubit.freezed.dart';

class DetailFavoriteCubit extends Cubit<DetailFavoriteState> {
  DetailFavoriteCubit(super.initialState, this.wordRepository, this.id);

  final WordRepository wordRepository;
  final String id;

  Future<void> deleteFromFavorite() async {
    emit(state.copyWith(asyncSnapshot: const AsyncSnapshot.waiting()));
    await Future.delayed(const Duration(seconds: 1));
    await wordRepository.deleteFromFavorite(id).then((value) {
      emit(state.copyWith(
          asyncSnapshot: const AsyncSnapshot.withData(
              ConnectionState.done, "Успешное удаление слова из избранного")));
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