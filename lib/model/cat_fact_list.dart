import 'package:cat_fact/model/cat_fact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact_list.g.dart';
part 'cat_fact_list.freezed.dart';

@freezed
class CatFactList with _$CatFactList {
  const factory CatFactList({
    @Default(0) int currentPage,
    @Default([]) List<CatFact> catFactDataList,
    @Default(0) int lastPage,
  }) = _CatFactList;

  factory CatFactList.fromJson(Map<String, dynamic> json) =>
      _$CatFactListFromJson(json);
}