import 'package:cat_fact/model/cat_breed.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed_list.g.dart';
part 'cat_breed_list.freezed.dart';

@freezed
class CatBreedList with _$CatBreedList {
  const factory CatBreedList({
    @Default(0) int currentPage,
    @Default([]) List<CatBreed> catbreedList,
    @Default(0) int lastPage,
  }) = _CatBreedList;

  factory CatBreedList.fromJson(Map<String, dynamic> json) =>
      _$CatBreedListFromJson(json);
}