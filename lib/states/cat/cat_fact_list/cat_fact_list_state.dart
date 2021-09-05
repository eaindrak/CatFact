import 'package:cat_fact/model/cat_fact_list.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_fact_list_state.freezed.dart';

extension CatFactListGetters on CatFactListState {
  bool get isLoading => this is _CatFactListStateLoading;
}

@freezed
abstract class CatFactListState with _$CatFactListState {
  ///Initial
  const factory CatFactListState.initial() = _CatFactListState;
  ///Loading
  const factory CatFactListState.loading() = _CatFactListStateLoading;
  ///Data
  const factory CatFactListState.data({required CatFactList catFactList}) = _CatFactListStateData;
  ///Error
  const factory CatFactListState.error([String? error]) = _CatFactListStateError;
}