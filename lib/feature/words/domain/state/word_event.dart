part of 'word_cubit.dart';

@freezed
class WordEvent with _$WordEvent{
  const WordEvent._();

  factory WordEvent.fetchWords() = _WordEventFetchWords;
  factory WordEvent.fetchFavorites() = _WordEventFetchFavorites;
  factory WordEvent.createWord(Map<String, dynamic> args) = _WordEventCreateWord;
  factory WordEvent.updateWord(String id, Map<String, dynamic> args) = _WordEventUpdateWord;
  factory WordEvent.logOut() = _WordEventLogOut;
}