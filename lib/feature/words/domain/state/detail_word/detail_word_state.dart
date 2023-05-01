part of 'detail_word_cubit.dart';

@freezed
class DetailWordState with _$DetailWordState {
  const factory DetailWordState({
    @Default(AsyncSnapshot.nothing())
    @JsonKey(ignore: true)
        AsyncSnapshot asyncSnapshot,
    WordEntity? wordEntity,
  }) = _DetailWordState;
}
