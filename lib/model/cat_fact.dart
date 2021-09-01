import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact.g.dart';
part 'cat_fact.freezed.dart';

@freezed
class CatFact with _$CatFact {
  const factory CatFact({
    @Default('') String fact,
    @Default(0) int length,
  }) = _CatFact;

  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);
}