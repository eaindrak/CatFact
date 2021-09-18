import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_state.freezed.dart';

extension CatRandomFactGetters on CatRandomFactState {
  bool get isLoading => this is _CatRandomFactStateLoading;
}

@freezed
class CatRandomFactState with _$CatRandomFactState {
  ///Initial
  const factory CatRandomFactState.initial() = _CatRandomFactStateInitial;
  ///Loading
  const factory CatRandomFactState.loading() = _CatRandomFactStateLoading;
  ///Data
  const factory CatRandomFactState.data({required CatFact catFact,required String imageName,required String sourceLan,required TranslateText translateText}) = _CatRandomFactStateData;
  ///Error
  const factory CatRandomFactState.error([String? error]) = _CatRandomFactStateError;
}