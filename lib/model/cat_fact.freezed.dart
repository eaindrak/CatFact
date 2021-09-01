// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cat_fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFact _$CatFactFromJson(Map<String, dynamic> json) {
  return _CatFact.fromJson(json);
}

/// @nodoc
class _$CatFactTearOff {
  const _$CatFactTearOff();

  _CatFact call({String fact = '', int length = 0}) {
    return _CatFact(
      fact: fact,
      length: length,
    );
  }

  CatFact fromJson(Map<String, Object> json) {
    return CatFact.fromJson(json);
  }
}

/// @nodoc
const $CatFact = _$CatFactTearOff();

/// @nodoc
mixin _$CatFact {
  String get fact => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactCopyWith<CatFact> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactCopyWith<$Res> {
  factory $CatFactCopyWith(CatFact value, $Res Function(CatFact) then) =
      _$CatFactCopyWithImpl<$Res>;
  $Res call({String fact, int length});
}

/// @nodoc
class _$CatFactCopyWithImpl<$Res> implements $CatFactCopyWith<$Res> {
  _$CatFactCopyWithImpl(this._value, this._then);

  final CatFact _value;
  // ignore: unused_field
  final $Res Function(CatFact) _then;

  @override
  $Res call({
    Object? fact = freezed,
    Object? length = freezed,
  }) {
    return _then(_value.copyWith(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CatFactCopyWith<$Res> implements $CatFactCopyWith<$Res> {
  factory _$CatFactCopyWith(_CatFact value, $Res Function(_CatFact) then) =
      __$CatFactCopyWithImpl<$Res>;
  @override
  $Res call({String fact, int length});
}

/// @nodoc
class __$CatFactCopyWithImpl<$Res> extends _$CatFactCopyWithImpl<$Res>
    implements _$CatFactCopyWith<$Res> {
  __$CatFactCopyWithImpl(_CatFact _value, $Res Function(_CatFact) _then)
      : super(_value, (v) => _then(v as _CatFact));

  @override
  _CatFact get _value => super._value as _CatFact;

  @override
  $Res call({
    Object? fact = freezed,
    Object? length = freezed,
  }) {
    return _then(_CatFact(
      fact: fact == freezed
          ? _value.fact
          : fact // ignore: cast_nullable_to_non_nullable
              as String,
      length: length == freezed
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatFact implements _CatFact {
  const _$_CatFact({this.fact = '', this.length = 0});

  factory _$_CatFact.fromJson(Map<String, dynamic> json) =>
      _$_$_CatFactFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String fact;
  @JsonKey(defaultValue: 0)
  @override
  final int length;

  @override
  String toString() {
    return 'CatFact(fact: $fact, length: $length)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatFact &&
            (identical(other.fact, fact) ||
                const DeepCollectionEquality().equals(other.fact, fact)) &&
            (identical(other.length, length) ||
                const DeepCollectionEquality().equals(other.length, length)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(fact) ^
      const DeepCollectionEquality().hash(length);

  @JsonKey(ignore: true)
  @override
  _$CatFactCopyWith<_CatFact> get copyWith =>
      __$CatFactCopyWithImpl<_CatFact>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CatFactToJson(this);
  }
}

abstract class _CatFact implements CatFact {
  const factory _CatFact({String fact, int length}) = _$_CatFact;

  factory _CatFact.fromJson(Map<String, dynamic> json) = _$_CatFact.fromJson;

  @override
  String get fact => throw _privateConstructorUsedError;
  @override
  int get length => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CatFactCopyWith<_CatFact> get copyWith =>
      throw _privateConstructorUsedError;
}
