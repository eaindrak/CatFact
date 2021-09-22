// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cat_favorite_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatFavoriteListStateTearOff {
  const _$CatFavoriteListStateTearOff();

  _CatFavoriteListState initial() {
    return const _CatFavoriteListState();
  }

  _CatFavoriteListStateLoading loading() {
    return const _CatFavoriteListStateLoading();
  }

  _CatFavoriteListStateData data({required List<CatFact> catFactList}) {
    return _CatFavoriteListStateData(
      catFactList: catFactList,
    );
  }

  _CatFavoriteListStateError error([String? error]) {
    return _CatFavoriteListStateError(
      error,
    );
  }
}

/// @nodoc
const $CatFavoriteListState = _$CatFavoriteListStateTearOff();

/// @nodoc
mixin _$CatFavoriteListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatFact> catFactList) data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatFact> catFactList)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatFavoriteListState value) initial,
    required TResult Function(_CatFavoriteListStateLoading value) loading,
    required TResult Function(_CatFavoriteListStateData value) data,
    required TResult Function(_CatFavoriteListStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatFavoriteListState value)? initial,
    TResult Function(_CatFavoriteListStateLoading value)? loading,
    TResult Function(_CatFavoriteListStateData value)? data,
    TResult Function(_CatFavoriteListStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFavoriteListStateCopyWith<$Res> {
  factory $CatFavoriteListStateCopyWith(CatFavoriteListState value,
          $Res Function(CatFavoriteListState) then) =
      _$CatFavoriteListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatFavoriteListStateCopyWithImpl<$Res>
    implements $CatFavoriteListStateCopyWith<$Res> {
  _$CatFavoriteListStateCopyWithImpl(this._value, this._then);

  final CatFavoriteListState _value;
  // ignore: unused_field
  final $Res Function(CatFavoriteListState) _then;
}

/// @nodoc
abstract class _$CatFavoriteListStateCopyWith<$Res> {
  factory _$CatFavoriteListStateCopyWith(_CatFavoriteListState value,
          $Res Function(_CatFavoriteListState) then) =
      __$CatFavoriteListStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CatFavoriteListStateCopyWithImpl<$Res>
    extends _$CatFavoriteListStateCopyWithImpl<$Res>
    implements _$CatFavoriteListStateCopyWith<$Res> {
  __$CatFavoriteListStateCopyWithImpl(
      _CatFavoriteListState _value, $Res Function(_CatFavoriteListState) _then)
      : super(_value, (v) => _then(v as _CatFavoriteListState));

  @override
  _CatFavoriteListState get _value => super._value as _CatFavoriteListState;
}

/// @nodoc

class _$_CatFavoriteListState implements _CatFavoriteListState {
  const _$_CatFavoriteListState();

  @override
  String toString() {
    return 'CatFavoriteListState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatFavoriteListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatFact> catFactList) data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatFact> catFactList)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatFavoriteListState value) initial,
    required TResult Function(_CatFavoriteListStateLoading value) loading,
    required TResult Function(_CatFavoriteListStateData value) data,
    required TResult Function(_CatFavoriteListStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatFavoriteListState value)? initial,
    TResult Function(_CatFavoriteListStateLoading value)? loading,
    TResult Function(_CatFavoriteListStateData value)? data,
    TResult Function(_CatFavoriteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CatFavoriteListState implements CatFavoriteListState {
  const factory _CatFavoriteListState() = _$_CatFavoriteListState;
}

/// @nodoc
abstract class _$CatFavoriteListStateLoadingCopyWith<$Res> {
  factory _$CatFavoriteListStateLoadingCopyWith(
          _CatFavoriteListStateLoading value,
          $Res Function(_CatFavoriteListStateLoading) then) =
      __$CatFavoriteListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CatFavoriteListStateLoadingCopyWithImpl<$Res>
    extends _$CatFavoriteListStateCopyWithImpl<$Res>
    implements _$CatFavoriteListStateLoadingCopyWith<$Res> {
  __$CatFavoriteListStateLoadingCopyWithImpl(
      _CatFavoriteListStateLoading _value,
      $Res Function(_CatFavoriteListStateLoading) _then)
      : super(_value, (v) => _then(v as _CatFavoriteListStateLoading));

  @override
  _CatFavoriteListStateLoading get _value =>
      super._value as _CatFavoriteListStateLoading;
}

/// @nodoc

class _$_CatFavoriteListStateLoading implements _CatFavoriteListStateLoading {
  const _$_CatFavoriteListStateLoading();

  @override
  String toString() {
    return 'CatFavoriteListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatFavoriteListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatFact> catFactList) data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatFact> catFactList)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatFavoriteListState value) initial,
    required TResult Function(_CatFavoriteListStateLoading value) loading,
    required TResult Function(_CatFavoriteListStateData value) data,
    required TResult Function(_CatFavoriteListStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatFavoriteListState value)? initial,
    TResult Function(_CatFavoriteListStateLoading value)? loading,
    TResult Function(_CatFavoriteListStateData value)? data,
    TResult Function(_CatFavoriteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CatFavoriteListStateLoading implements CatFavoriteListState {
  const factory _CatFavoriteListStateLoading() = _$_CatFavoriteListStateLoading;
}

/// @nodoc
abstract class _$CatFavoriteListStateDataCopyWith<$Res> {
  factory _$CatFavoriteListStateDataCopyWith(_CatFavoriteListStateData value,
          $Res Function(_CatFavoriteListStateData) then) =
      __$CatFavoriteListStateDataCopyWithImpl<$Res>;
  $Res call({List<CatFact> catFactList});
}

/// @nodoc
class __$CatFavoriteListStateDataCopyWithImpl<$Res>
    extends _$CatFavoriteListStateCopyWithImpl<$Res>
    implements _$CatFavoriteListStateDataCopyWith<$Res> {
  __$CatFavoriteListStateDataCopyWithImpl(_CatFavoriteListStateData _value,
      $Res Function(_CatFavoriteListStateData) _then)
      : super(_value, (v) => _then(v as _CatFavoriteListStateData));

  @override
  _CatFavoriteListStateData get _value =>
      super._value as _CatFavoriteListStateData;

  @override
  $Res call({
    Object? catFactList = freezed,
  }) {
    return _then(_CatFavoriteListStateData(
      catFactList: catFactList == freezed
          ? _value.catFactList
          : catFactList // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
    ));
  }
}

/// @nodoc

class _$_CatFavoriteListStateData implements _CatFavoriteListStateData {
  const _$_CatFavoriteListStateData({required this.catFactList});

  @override
  final List<CatFact> catFactList;

  @override
  String toString() {
    return 'CatFavoriteListState.data(catFactList: $catFactList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatFavoriteListStateData &&
            (identical(other.catFactList, catFactList) ||
                const DeepCollectionEquality()
                    .equals(other.catFactList, catFactList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(catFactList);

  @JsonKey(ignore: true)
  @override
  _$CatFavoriteListStateDataCopyWith<_CatFavoriteListStateData> get copyWith =>
      __$CatFavoriteListStateDataCopyWithImpl<_CatFavoriteListStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatFact> catFactList) data,
    required TResult Function(String? error) error,
  }) {
    return data(catFactList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatFact> catFactList)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(catFactList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatFavoriteListState value) initial,
    required TResult Function(_CatFavoriteListStateLoading value) loading,
    required TResult Function(_CatFavoriteListStateData value) data,
    required TResult Function(_CatFavoriteListStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatFavoriteListState value)? initial,
    TResult Function(_CatFavoriteListStateLoading value)? loading,
    TResult Function(_CatFavoriteListStateData value)? data,
    TResult Function(_CatFavoriteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _CatFavoriteListStateData implements CatFavoriteListState {
  const factory _CatFavoriteListStateData(
      {required List<CatFact> catFactList}) = _$_CatFavoriteListStateData;

  List<CatFact> get catFactList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CatFavoriteListStateDataCopyWith<_CatFavoriteListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CatFavoriteListStateErrorCopyWith<$Res> {
  factory _$CatFavoriteListStateErrorCopyWith(_CatFavoriteListStateError value,
          $Res Function(_CatFavoriteListStateError) then) =
      __$CatFavoriteListStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$CatFavoriteListStateErrorCopyWithImpl<$Res>
    extends _$CatFavoriteListStateCopyWithImpl<$Res>
    implements _$CatFavoriteListStateErrorCopyWith<$Res> {
  __$CatFavoriteListStateErrorCopyWithImpl(_CatFavoriteListStateError _value,
      $Res Function(_CatFavoriteListStateError) _then)
      : super(_value, (v) => _then(v as _CatFavoriteListStateError));

  @override
  _CatFavoriteListStateError get _value =>
      super._value as _CatFavoriteListStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_CatFavoriteListStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CatFavoriteListStateError implements _CatFavoriteListStateError {
  const _$_CatFavoriteListStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CatFavoriteListState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatFavoriteListStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$CatFavoriteListStateErrorCopyWith<_CatFavoriteListStateError>
      get copyWith =>
          __$CatFavoriteListStateErrorCopyWithImpl<_CatFavoriteListStateError>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<CatFact> catFactList) data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<CatFact> catFactList)? data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatFavoriteListState value) initial,
    required TResult Function(_CatFavoriteListStateLoading value) loading,
    required TResult Function(_CatFavoriteListStateData value) data,
    required TResult Function(_CatFavoriteListStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatFavoriteListState value)? initial,
    TResult Function(_CatFavoriteListStateLoading value)? loading,
    TResult Function(_CatFavoriteListStateData value)? data,
    TResult Function(_CatFavoriteListStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CatFavoriteListStateError implements CatFavoriteListState {
  const factory _CatFavoriteListStateError([String? error]) =
      _$_CatFavoriteListStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CatFavoriteListStateErrorCopyWith<_CatFavoriteListStateError>
      get copyWith => throw _privateConstructorUsedError;
}
