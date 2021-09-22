import 'package:cat_fact/model/cat_fact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cat_favorite_list_state.freezed.dart';

extension CatFavoriteListGetters on CatFavoriteListState {
  bool get isLoading => this is _CatFavoriteListStateLoading;
}

@freezed
class CatFavoriteListState with _$CatFavoriteListState {
  ///Initial
  const factory CatFavoriteListState.initial() = _CatFavoriteListState;
  ///Loading
  const factory CatFavoriteListState.loading() = _CatFavoriteListStateLoading;
  ///Data
  const factory CatFavoriteListState.data({required List<CatFact> catFactList}) = _CatFavoriteListStateData;
  ///Error
  const factory CatFavoriteListState.error([String? error]) = _CatFavoriteListStateError;
}