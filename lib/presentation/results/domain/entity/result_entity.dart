import 'package:freezed_annotation/freezed_annotation.dart';

part 'result_entity.freezed.dart';

@freezed
class ResultEntity with _$ResultEntity {
  factory ResultEntity({
    @Default('') String title,
    DateTime? datePublished,
  }) = _ResultEntity;

  factory ResultEntity.initial() {
    return ResultEntity(
      title: '',
    );
  }
}
