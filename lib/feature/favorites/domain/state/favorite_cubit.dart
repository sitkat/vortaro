import 'dart:async';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';
import 'package:vortaro/feature/favorites/domain/entity/favorite_entity.dart';
import 'package:vortaro/feature/words/domain/entity/word_entity.dart';
import 'package:vortaro/feature/words/domain/word_repository.dart';

part 'favorite_state.dart';

part 'favorite_cubit.freezed.dart';

class FavoriteCubit extends Cubit<FavoriteState> {
  FavoriteCubit(this.wordRepository) : super(const FavoriteState());

  final WordRepository wordRepository;

  @override
  void addError(Object error, [StackTrace? stackTrace]) {
    emit(state.copyWith(
        asyncSnapshot: AsyncSnapshot.withError(ConnectionState.done, error)));
    super.addError(error, stackTrace);
  }
}
