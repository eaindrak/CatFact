// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breed_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatBreedList _$_$_CatBreedListFromJson(Map<String, dynamic> json) {
  return _$_CatBreedList(
    currentPage: json['currentPage'] as int? ?? 0,
    catbreedList: (json['catbreedList'] as List<dynamic>?)
            ?.map((e) => CatBreed.fromJson(e as Map<String, dynamic>))
            .toList() ??
        [],
    lastPage: json['lastPage'] as int? ?? 0,
  );
}

Map<String, dynamic> _$_$_CatBreedListToJson(_$_CatBreedList instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'catbreedList': instance.catbreedList,
      'lastPage': instance.lastPage,
    };
