part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([])List<WordEntity> wordList,
    @Default([])List<FavoriteEntity> favoriteList,
    @Default(15) int fetchLimit,
    @Default(0) int offset,
  }) = _WordState;
}
