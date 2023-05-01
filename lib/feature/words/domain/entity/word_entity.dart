import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vortaro/feature/auth/domain/entities/user_entity/user_entity.dart';

part 'word_entity.freezed.dart';

part 'word_entity.g.dart';

@freezed
class WordEntity with _$WordEntity {
  const factory WordEntity({
    required int id,
    required DateTime edition,
    required String title,
    required String translation,
    String? description,
    UserEntity? user,
  }) = _WordEntity;

  factory WordEntity.fromJson(Map<String, dynamic> json) =>
      _$WordEntityFromJson(json);
}
