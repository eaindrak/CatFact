import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_breed_state.freezed.dart';

extension CatBreedGetters on CatBreedState {
  bool get isLoading => this is _CatBreedStateLoading;
}

@freezed
class CatBreedState with _$CatBreedState {
  ///Initial
  const factory CatBreedState.initial() = _CatBreedState;
  ///Loading
  const factory CatBreedState.loading() = _CatBreedStateLoading;
  ///Data
  const factory CatBreedState.data({required CatBreed catBreed,required String imageName,required String sourceLan,required TranslateBreed translateBreed,required bool isTranslated}) = _CatBreedStateData;
  ///Error
  const factory CatBreedState.error([String? error]) = _CatBreedStateError;
}