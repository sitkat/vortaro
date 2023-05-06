part of 'detail_favorite_cubit.dart';

@freezed
class DetailFavoriteState with _$DetailFavoriteState {
  const factory DetailFavoriteState({
    @JsonKey(ignore: true) AsyncSnapshot? asyncSnapshot,
    @Default([]) List<WordEntity> wordList,
  }) = _FavoriteState;
}