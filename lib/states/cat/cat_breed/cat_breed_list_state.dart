import 'package:cat_fact/model/cat_breed_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed_list_state.freezed.dart';

extension CatBreedListGetters on CatBreedListState {
  bool get isLoading => this is _CatBreedListStateLoading;
}

@freezed
class CatBreedListState with _$CatBreedListState {
  ///Initial
  const factory CatBreedListState.initial() = _CatBreedListState;
  ///Loading
  const factory CatBreedListState.loading() = _CatBreedListStateLoading;
  ///Data
  const factory CatBreedListState.data({required CatBreedList catBreedList}) = _CatBreedListStateData;
  ///Error
  const factory CatBreedListState.error([String? error]) = _CatBreedListStateError;
}