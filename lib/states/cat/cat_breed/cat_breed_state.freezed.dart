// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cat_breed_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CatBreedStateTearOff {
  const _$CatBreedStateTearOff();

  _CatBreedState initial() {
    return const _CatBreedState();
  }

  _CatBreedStateLoading loading() {
    return const _CatBreedStateLoading();
  }

  _CatBreedStateData data(
      {required CatBreed catBreed,
      required String imageName,
      required String sourceLan,
      required TranslateBreed translateBreed,
      required bool isTranslated}) {
    return _CatBreedStateData(
      catBreed: catBreed,
      imageName: imageName,
      sourceLan: sourceLan,
      translateBreed: translateBreed,
      isTranslated: isTranslated,
    );
  }

  _CatBreedStateError error([String? error]) {
    return _CatBreedStateError(
      error,
    );
  }
}

/// @nodoc
const $CatBreedState = _$CatBreedStateTearOff();

/// @nodoc
mixin _$CatBreedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatBreed catBreed, String imageName,
            String sourceLan, TranslateBreed translateBreed, bool isTranslated)
        data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatBreed catBreed, String imageName, String sourceLan,
            TranslateBreed translateBreed, bool isTranslated)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatBreedState value) initial,
    required TResult Function(_CatBreedStateLoading value) loading,
    required TResult Function(_CatBreedStateData value) data,
    required TResult Function(_CatBreedStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatBreedState value)? initial,
    TResult Function(_CatBreedStateLoading value)? loading,
    TResult Function(_CatBreedStateData value)? data,
    TResult Function(_CatBreedStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatBreedStateCopyWith<$Res> {
  factory $CatBreedStateCopyWith(
          CatBreedState value, $Res Function(CatBreedState) then) =
      _$CatBreedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CatBreedStateCopyWithImpl<$Res>
    implements $CatBreedStateCopyWith<$Res> {
  _$CatBreedStateCopyWithImpl(this._value, this._then);

  final CatBreedState _value;
  // ignore: unused_field
  final $Res Function(CatBreedState) _then;
}

/// @nodoc
abstract class _$CatBreedStateCopyWith<$Res> {
  factory _$CatBreedStateCopyWith(
          _CatBreedState value, $Res Function(_CatBreedState) then) =
      __$CatBreedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$CatBreedStateCopyWithImpl<$Res>
    extends _$CatBreedStateCopyWithImpl<$Res>
    implements _$CatBreedStateCopyWith<$Res> {
  __$CatBreedStateCopyWithImpl(
      _CatBreedState _value, $Res Function(_CatBreedState) _then)
      : super(_value, (v) => _then(v as _CatBreedState));

  @override
  _CatBreedState get _value => super._value as _CatBreedState;
}

/// @nodoc

class _$_CatBreedState implements _CatBreedState {
  const _$_CatBreedState();

  @override
  String toString() {
    return 'CatBreedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatBreedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatBreed catBreed, String imageName,
            String sourceLan, TranslateBreed translateBreed, bool isTranslated)
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
    TResult Function(CatBreed catBreed, String imageName, String sourceLan,
            TranslateBreed translateBreed, bool isTranslated)?
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
    required TResult Function(_CatBreedState value) initial,
    required TResult Function(_CatBreedStateLoading value) loading,
    required TResult Function(_CatBreedStateData value) data,
    required TResult Function(_CatBreedStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatBreedState value)? initial,
    TResult Function(_CatBreedStateLoading value)? loading,
    TResult Function(_CatBreedStateData value)? data,
    TResult Function(_CatBreedStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _CatBreedState implements CatBreedState {
  const factory _CatBreedState() = _$_CatBreedState;
}

/// @nodoc
abstract class _$CatBreedStateLoadingCopyWith<$Res> {
  factory _$CatBreedStateLoadingCopyWith(_CatBreedStateLoading value,
          $Res Function(_CatBreedStateLoading) then) =
      __$CatBreedStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$CatBreedStateLoadingCopyWithImpl<$Res>
    extends _$CatBreedStateCopyWithImpl<$Res>
    implements _$CatBreedStateLoadingCopyWith<$Res> {
  __$CatBreedStateLoadingCopyWithImpl(
      _CatBreedStateLoading _value, $Res Function(_CatBreedStateLoading) _then)
      : super(_value, (v) => _then(v as _CatBreedStateLoading));

  @override
  _CatBreedStateLoading get _value => super._value as _CatBreedStateLoading;
}

/// @nodoc

class _$_CatBreedStateLoading implements _CatBreedStateLoading {
  const _$_CatBreedStateLoading();

  @override
  String toString() {
    return 'CatBreedState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CatBreedStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatBreed catBreed, String imageName,
            String sourceLan, TranslateBreed translateBreed, bool isTranslated)
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
    TResult Function(CatBreed catBreed, String imageName, String sourceLan,
            TranslateBreed translateBreed, bool isTranslated)?
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
    required TResult Function(_CatBreedState value) initial,
    required TResult Function(_CatBreedStateLoading value) loading,
    required TResult Function(_CatBreedStateData value) data,
    required TResult Function(_CatBreedStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatBreedState value)? initial,
    TResult Function(_CatBreedStateLoading value)? loading,
    TResult Function(_CatBreedStateData value)? data,
    TResult Function(_CatBreedStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CatBreedStateLoading implements CatBreedState {
  const factory _CatBreedStateLoading() = _$_CatBreedStateLoading;
}

/// @nodoc
abstract class _$CatBreedStateDataCopyWith<$Res> {
  factory _$CatBreedStateDataCopyWith(
          _CatBreedStateData value, $Res Function(_CatBreedStateData) then) =
      __$CatBreedStateDataCopyWithImpl<$Res>;
  $Res call(
      {CatBreed catBreed,
      String imageName,
      String sourceLan,
      TranslateBreed translateBreed,
      bool isTranslated});

  $CatBreedCopyWith<$Res> get catBreed;
}

/// @nodoc
class __$CatBreedStateDataCopyWithImpl<$Res>
    extends _$CatBreedStateCopyWithImpl<$Res>
    implements _$CatBreedStateDataCopyWith<$Res> {
  __$CatBreedStateDataCopyWithImpl(
      _CatBreedStateData _value, $Res Function(_CatBreedStateData) _then)
      : super(_value, (v) => _then(v as _CatBreedStateData));

  @override
  _CatBreedStateData get _value => super._value as _CatBreedStateData;

  @override
  $Res call({
    Object? catBreed = freezed,
    Object? imageName = freezed,
    Object? sourceLan = freezed,
    Object? translateBreed = freezed,
    Object? isTranslated = freezed,
  }) {
    return _then(_CatBreedStateData(
      catBreed: catBreed == freezed
          ? _value.catBreed
          : catBreed // ignore: cast_nullable_to_non_nullable
              as CatBreed,
      imageName: imageName == freezed
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
      sourceLan: sourceLan == freezed
          ? _value.sourceLan
          : sourceLan // ignore: cast_nullable_to_non_nullable
              as String,
      translateBreed: translateBreed == freezed
          ? _value.translateBreed
          : translateBreed // ignore: cast_nullable_to_non_nullable
              as TranslateBreed,
      isTranslated: isTranslated == freezed
          ? _value.isTranslated
          : isTranslated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $CatBreedCopyWith<$Res> get catBreed {
    return $CatBreedCopyWith<$Res>(_value.catBreed, (value) {
      return _then(_value.copyWith(catBreed: value));
    });
  }
}

/// @nodoc

class _$_CatBreedStateData implements _CatBreedStateData {
  const _$_CatBreedStateData(
      {required this.catBreed,
      required this.imageName,
      required this.sourceLan,
      required this.translateBreed,
      required this.isTranslated});

  @override
  final CatBreed catBreed;
  @override
  final String imageName;
  @override
  final String sourceLan;
  @override
  final TranslateBreed translateBreed;
  @override
  final bool isTranslated;

  @override
  String toString() {
    return 'CatBreedState.data(catBreed: $catBreed, imageName: $imageName, sourceLan: $sourceLan, translateBreed: $translateBreed, isTranslated: $isTranslated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatBreedStateData &&
            (identical(other.catBreed, catBreed) ||
                const DeepCollectionEquality()
                    .equals(other.catBreed, catBreed)) &&
            (identical(other.imageName, imageName) ||
                const DeepCollectionEquality()
                    .equals(other.imageName, imageName)) &&
            (identical(other.sourceLan, sourceLan) ||
                const DeepCollectionEquality()
                    .equals(other.sourceLan, sourceLan)) &&
            (identical(other.translateBreed, translateBreed) ||
                const DeepCollectionEquality()
                    .equals(other.translateBreed, translateBreed)) &&
            (identical(other.isTranslated, isTranslated) ||
                const DeepCollectionEquality()
                    .equals(other.isTranslated, isTranslated)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(catBreed) ^
      const DeepCollectionEquality().hash(imageName) ^
      const DeepCollectionEquality().hash(sourceLan) ^
      const DeepCollectionEquality().hash(translateBreed) ^
      const DeepCollectionEquality().hash(isTranslated);

  @JsonKey(ignore: true)
  @override
  _$CatBreedStateDataCopyWith<_CatBreedStateData> get copyWith =>
      __$CatBreedStateDataCopyWithImpl<_CatBreedStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatBreed catBreed, String imageName,
            String sourceLan, TranslateBreed translateBreed, bool isTranslated)
        data,
    required TResult Function(String? error) error,
  }) {
    return data(catBreed, imageName, sourceLan, translateBreed, isTranslated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CatBreed catBreed, String imageName, String sourceLan,
            TranslateBreed translateBreed, bool isTranslated)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(catBreed, imageName, sourceLan, translateBreed, isTranslated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CatBreedState value) initial,
    required TResult Function(_CatBreedStateLoading value) loading,
    required TResult Function(_CatBreedStateData value) data,
    required TResult Function(_CatBreedStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatBreedState value)? initial,
    TResult Function(_CatBreedStateLoading value)? loading,
    TResult Function(_CatBreedStateData value)? data,
    TResult Function(_CatBreedStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _CatBreedStateData implements CatBreedState {
  const factory _CatBreedStateData(
      {required CatBreed catBreed,
      required String imageName,
      required String sourceLan,
      required TranslateBreed translateBreed,
      required bool isTranslated}) = _$_CatBreedStateData;

  CatBreed get catBreed => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;
  String get sourceLan => throw _privateConstructorUsedError;
  TranslateBreed get translateBreed => throw _privateConstructorUsedError;
  bool get isTranslated => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CatBreedStateDataCopyWith<_CatBreedStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$CatBreedStateErrorCopyWith<$Res> {
  factory _$CatBreedStateErrorCopyWith(
          _CatBreedStateError value, $Res Function(_CatBreedStateError) then) =
      __$CatBreedStateErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$CatBreedStateErrorCopyWithImpl<$Res>
    extends _$CatBreedStateCopyWithImpl<$Res>
    implements _$CatBreedStateErrorCopyWith<$Res> {
  __$CatBreedStateErrorCopyWithImpl(
      _CatBreedStateError _value, $Res Function(_CatBreedStateError) _then)
      : super(_value, (v) => _then(v as _CatBreedStateError));

  @override
  _CatBreedStateError get _value => super._value as _CatBreedStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_CatBreedStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CatBreedStateError implements _CatBreedStateError {
  const _$_CatBreedStateError([this.error]);

  @override
  final String? error;

  @override
  String toString() {
    return 'CatBreedState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatBreedStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$CatBreedStateErrorCopyWith<_CatBreedStateError> get copyWith =>
      __$CatBreedStateErrorCopyWithImpl<_CatBreedStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CatBreed catBreed, String imageName,
            String sourceLan, TranslateBreed translateBreed, bool isTranslated)
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
    TResult Function(CatBreed catBreed, String imageName, String sourceLan,
            TranslateBreed translateBreed, bool isTranslated)?
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
    required TResult Function(_CatBreedState value) initial,
    required TResult Function(_CatBreedStateLoading value) loading,
    required TResult Function(_CatBreedStateData value) data,
    required TResult Function(_CatBreedStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CatBreedState value)? initial,
    TResult Function(_CatBreedStateLoading value)? loading,
    TResult Function(_CatBreedStateData value)? data,
    TResult Function(_CatBreedStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CatBreedStateError implements CatBreedState {
  const factory _CatBreedStateError([String? error]) = _$_CatBreedStateError;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$CatBreedStateErrorCopyWith<_CatBreedStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
