// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatRandomFactStateTearOff {
  const _$CatRandomFactStateTearOff();

  _CatRandomFactStateInitial initial() {
    return const _CatRandomFactStateInitial();
  }

  _CatRandomFactStateLoading loading() {
    return const _CatRandomFactStateLoading();
  }

  _CatRandomFactStateData data(
      {required CatFact catFact,
      required String imageName,
      required String sourceLan,
      required TranslateText translateText,
      required int isSaved}) {
    return _CatRandomFactStateData(
      catFact: catFact,
      imageName: imageName,
      sourceLan: sourceLan,
      translateText: translateText,
      isSaved: isSaved,
    );
  }

  _CatRandomFactStateError error([String? error]) {
    return _CatRandomFactStateError(
      error,
    );
  }
}

/// @nodoc
const $CatRandomFactState = _$CatRandomFactStateTearOff();

/// @nodoc
mixin _$CatRandomFactState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatFact catFact, String imageName,
            String sourceLan, TranslateText translateText, int isSaved)
        data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatFact catFact, String imageName, String sourceLan,
            TranslateText translateText, int isSaved)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatRandomFactStateInitial value) initial,
    required TResult Function(_CatRandomFactStateLoading value) loading,
    required TResult Function(_CatRandomFactStateData value) data,
    required TResult Function(_CatRandomFactStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatRandomFactStateInitial value)? initial,
    TResult Function(_CatRandomFactStateLoading value)? loading,
    TResult Function(_CatRandomFactStateData value)? data,
    TResult Function(_CatRandomFactStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatRandomFactStateCopyWith<$Res> {
  factory $CatRandomFactStateCopyWith(
          CatRandomFactState value, $Res Function(CatRandomFactState) then) =
      _$CatRandomFactStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatRandomFactStateCopyWithImpl<$Res>
    implements $CatRandomFactStateCopyWith<$Res> {
  _$CatRandomFactStateCopyWithImpl(this._value, this._then);

  final CatRandomFactState _value;
  // ignore: unused_field
  final $Res Function(CatRandomFactState) _then;
}

/// @nodoc
abstract class _$CatRandomFactStateInitialCopyWith<$Res> {
  factory _$CatRandomFactStateInitialCopyWith(_CatRandomFactStateInitial value,
          $Res Function(_CatRandomFactStateInitial) then) =
      __$CatRandomFactStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$CatRandomFactStateInitialCopyWithImpl<$Res>
    extends _$CatRandomFactStateCopyWithImpl<$Res>
    implements _$CatRandomFactStateInitialCopyWith<$Res> {
  __$CatRandomFactStateInitialCopyWithImpl(_CatRandomFactStateInitial _value,
      $Res Function(_CatRandomFactStateInitial) _then)
      : super(_value, (v) => _then(v as _CatRandomFactStateInitial));

  @override
  _CatRandomFactStateInitial get _value =>
      super._value as _CatRandomFactStateInitial;
}

/// @nodoc

class _$_CatRandomFactStateInitial implements _CatRandomFactStateInitial {
  const _$_CatRandomFactStateInitial();

  @override
  String toString() {
    return 'CatRandomFactState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatRandomFactStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatFact catFact, String imageName,
            String sourceLan, TranslateText translateText, int isSaved)
        data,
    required TResult Function(String? error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatFact catFact, String imageName, String sourceLan,
            TranslateText translateText, int isSaved)?
        data,
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
    required TResult Function(_CatRandomFactStateInitial value) initial,
    required TResult Function(_CatRandomFactStateLoading value) loading,
    required TResult Function(_CatRandomFactStateData value) data,
    required TResult Function(_CatRandomFactStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatRandomFactStateInitial value)? initial,
    TResult Function(_CatRandomFactStateLoading value)? loading,
    TResult Function(_CatRandomFactStateData value)? data,
    TResult Function(_CatRandomFactStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CatRandomFactStateInitial implements CatRandomFactState {
  const factory _CatRandomFactStateInitial() = _$_CatRandomFactStateInitial;
}

/// @nodoc
abstract class _$CatRandomFactStateLoadingCopyWith<$Res> {
  factory _$CatRandomFactStateLoadingCopyWith(_CatRandomFactStateLoading value,
          $Res Function(_CatRandomFactStateLoading) then) =
      __$CatRandomFactStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CatRandomFactStateLoadingCopyWithImpl<$Res>
    extends _$CatRandomFactStateCopyWithImpl<$Res>
    implements _$CatRandomFactStateLoadingCopyWith<$Res> {
  __$CatRandomFactStateLoadingCopyWithImpl(_CatRandomFactStateLoading _value,
      $Res Function(_CatRandomFactStateLoading) _then)
      : super(_value, (v) => _then(v as _CatRandomFactStateLoading));

  @override
  _CatRandomFactStateLoading get _value =>
      super._value as _CatRandomFactStateLoading;
}

/// @nodoc

class _$_CatRandomFactStateLoading implements _CatRandomFactStateLoading {
  const _$_CatRandomFactStateLoading();

  @override
  String toString() {
    return 'CatRandomFactState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatRandomFactStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatFact catFact, String imageName,
            String sourceLan, TranslateText translateText, int isSaved)
        data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatFact catFact, String imageName, String sourceLan,
            TranslateText translateText, int isSaved)?
        data,
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
    required TResult Function(_CatRandomFactStateInitial value) initial,
    required TResult Function(_CatRandomFactStateLoading value) loading,
    required TResult Function(_CatRandomFactStateData value) data,
    required TResult Function(_CatRandomFactStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatRandomFactStateInitial value)? initial,
    TResult Function(_CatRandomFactStateLoading value)? loading,
    TResult Function(_CatRandomFactStateData value)? data,
    TResult Function(_CatRandomFactStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CatRandomFactStateLoading implements CatRandomFactState {
  const factory _CatRandomFactStateLoading() = _$_CatRandomFactStateLoading;
}

/// @nodoc
abstract class _$CatRandomFactStateDataCopyWith<$Res> {
  factory _$CatRandomFactStateDataCopyWith(_CatRandomFactStateData value,
          $Res Function(_CatRandomFactStateData) then) =
      __$CatRandomFactStateDataCopyWithImpl<$Res>;
  $Res call(
      {CatFact catFact,
      String imageName,
      String sourceLan,
      TranslateText translateText,
      int isSaved});

  $CatFactCopyWith<$Res> get catFact;
}

/// @nodoc
class __$CatRandomFactStateDataCopyWithImpl<$Res>
    extends _$CatRandomFactStateCopyWithImpl<$Res>
    implements _$CatRandomFactStateDataCopyWith<$Res> {
  __$CatRandomFactStateDataCopyWithImpl(_CatRandomFactStateData _value,
      $Res Function(_CatRandomFactStateData) _then)
      : super(_value, (v) => _then(v as _CatRandomFactStateData));

  @override
  _CatRandomFactStateData get _value => super._value as _CatRandomFactStateData;

  @override
  $Res call({
    Object? catFact = freezed,
    Object? imageName = freezed,
    Object? sourceLan = freezed,
    Object? translateText = freezed,
    Object? isSaved = freezed,
  }) {
    return _then(_CatRandomFactStateData(
      catFact: catFact == freezed
          ? _value.catFact
          : catFact // ignore: cast_nullable_to_non_nullable
              as CatFact,
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      sourceLan: sourceLan == freezed
          ? _value.sourceLan
          : sourceLan // ignore: cast_nullable_to_non_nullable
              as String,
      translateText: translateText == freezed
          ? _value.translateText
          : translateText // ignore: cast_nullable_to_non_nullable
              as TranslateText,
      isSaved: isSaved == freezed
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $CatFactCopyWith<$Res> get catFact {
    return $CatFactCopyWith<$Res>(_value.catFact, (value) {
      return _then(_value.copyWith(catFact: value));
    });
  }
}

/// @nodoc

class _$_CatRandomFactStateData implements _CatRandomFactStateData {
  const _$_CatRandomFactStateData(
      {required this.catFact,
      required this.imageName,
      required this.sourceLan,
      required this.translateText,
      required this.isSaved});

  @override
  final CatFact catFact;
  @override
  final String imageName;
  @override
  final String sourceLan;
  @override
  final TranslateText translateText;
  @override
  final int isSaved;

  @override
  String toString() {
    return 'CatRandomFactState.data(catFact: $catFact, imageName: $imageName, sourceLan: $sourceLan, translateText: $translateText, isSaved: $isSaved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatRandomFactStateData &&
            (identical(other.catFact, catFact) ||
                const DeepCollectionEquality()
                    .equals(other.catFact, catFact)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)) &&
            (identical(other.sourceLan, sourceLan) ||
                const DeepCollectionEquality()
                    .equals(other.sourceLan, sourceLan)) &&
            (identical(other.translateText, translateText) ||
                const DeepCollectionEquality()
                    .equals(other.translateText, translateText)) &&
            (identical(other.isSaved, isSaved) ||
                const DeepCollectionEquality().equals(other.isSaved, isSaved)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(catFact) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(sourceLan) ^
      const DeepCollectionEquality().hash(translateText) ^
      const DeepCollectionEquality().hash(isSaved);

  @JsonKey(ignore: true)
  @override
  _$CatRandomFactStateDataCopyWith<_CatRandomFactStateData> get copyWith =>
      __$CatRandomFactStateDataCopyWithImpl<_CatRandomFactStateData>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatFact catFact, String imageName,
            String sourceLan, TranslateText translateText, int isSaved)
        data,
    required TResult Function(String? error) error,
  }) {
    return data(catFact, imageName, sourceLan, translateText, isSaved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatFact catFact, String imageName, String sourceLan,
            TranslateText translateText, int isSaved)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(catFact, imageName, sourceLan, translateText, isSaved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatRandomFactStateInitial value) initial,
    required TResult Function(_CatRandomFactStateLoading value) loading,
    required TResult Function(_CatRandomFactStateData value) data,
    required TResult Function(_CatRandomFactStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatRandomFactStateInitial value)? initial,
    TResult Function(_CatRandomFactStateLoading value)? loading,
    TResult Function(_CatRandomFactStateData value)? data,
    TResult Function(_CatRandomFactStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _CatRandomFactStateData implements CatRandomFactState {
  const factory _CatRandomFactStateData(
      {required CatFact catFact,
      required String imageName,
      required String sourceLan,
      required TranslateText translateText,
      required int isSaved}) = _$_CatRandomFactStateData;

  CatFact get catFact => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;
  String get sourceLan => throw _privateConstructorUsedError;
  TranslateText get translateText => throw _privateConstructorUsedError;
  int get isSaved => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CatRandomFactStateDataCopyWith<_CatRandomFactStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CatRandomFactStateErrorCopyWith<$Res> {
  factory _$CatRandomFactStateErrorCopyWith(_CatRandomFactStateError value,
          $Res Function(_CatRandomFactStateError) then) =
      __$CatRandomFactStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$CatRandomFactStateErrorCopyWithImpl<$Res>
    extends _$CatRandomFactStateCopyWithImpl<$Res>
    implements _$CatRandomFactStateErrorCopyWith<$Res> {
  __$CatRandomFactStateErrorCopyWithImpl(_CatRandomFactStateError _value,
      $Res Function(_CatRandomFactStateError) _then)
      : super(_value, (v) => _then(v as _CatRandomFactStateError));

  @override
  _CatRandomFactStateError get _value =>
      super._value as _CatRandomFactStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_CatRandomFactStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CatRandomFactStateError implements _CatRandomFactStateError {
  const _$_CatRandomFactStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CatRandomFactState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatRandomFactStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$CatRandomFactStateErrorCopyWith<_CatRandomFactStateError> get copyWith =>
      __$CatRandomFactStateErrorCopyWithImpl<_CatRandomFactStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatFact catFact, String imageName,
            String sourceLan, TranslateText translateText, int isSaved)
        data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatFact catFact, String imageName, String sourceLan,
            TranslateText translateText, int isSaved)?
        data,
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
    required TResult Function(_CatRandomFactStateInitial value) initial,
    required TResult Function(_CatRandomFactStateLoading value) loading,
    required TResult Function(_CatRandomFactStateData value) data,
    required TResult Function(_CatRandomFactStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatRandomFactStateInitial value)? initial,
    TResult Function(_CatRandomFactStateLoading value)? loading,
    TResult Function(_CatRandomFactStateData value)? data,
    TResult Function(_CatRandomFactStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CatRandomFactStateError implements CatRandomFactState {
  const factory _CatRandomFactStateError([String? error]) =
      _$_CatRandomFactStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CatRandomFactStateErrorCopyWith<_CatRandomFactStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
