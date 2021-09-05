// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_fact_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatFactList _$_$_CatFactListFromJson(Map<String, dynamic> json) {
  return _$_CatFactList(
    currentPage: json['currentPage'] as int? ?? 0,
    catFactDataList: (json['catFactDataList'] as List<dynamic>?)
            ?.map((e) => CatFact.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    lastPage: json['lastPage'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_CatFactListToJson(_$_CatFactList instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'catFactDataList': instance.catFactDataList,
      'lastPage': instance.lastPage,
    };
