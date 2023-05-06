part of 'word_cubit.dart';

@freezed
class WordState with _$WordState {
  const factory WordState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([])List<WordEntity> wordList,
    @Default([])List<FavoriteEntity> favoriteList,
  }) = _WordState;

  factory WordState.fromJson(Map<String, dynamic> json) =>
      _$WordStateFromJson(json);
}
