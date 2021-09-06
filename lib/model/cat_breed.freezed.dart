// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cat_breed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatBreed _$CatBreedFromJson(Map<String, dynamic> json) {
  return _CatBreed.fromJson(json);
}

/// @nodoc
class _$CatBreedTearOff {
  const _$CatBreedTearOff();

  _CatBreed call(
      {String breed = '',
      String country = '',
      String origin = '',
      String coat = '',
      String pattern = ''}) {
    return _CatBreed(
      breed: breed,
      country: country,
      origin: origin,
      coat: coat,
      pattern: pattern,
    );
  }

  CatBreed fromJson(Map<String, Object> json) {
    return CatBreed.fromJson(json);
  }
}

/// @nodoc
const $CatBreed = _$CatBreedTearOff();

/// @nodoc
mixin _$CatBreed {
  String get breed => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get origin => throw _privateConstructorUsedError;
  String get coat => throw _privateConstructorUsedError;
  String get pattern => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatBreedCopyWith<CatBreed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatBreedCopyWith<$Res> {
  factory $CatBreedCopyWith(CatBreed value, $Res Function(CatBreed) then) =
      _$CatBreedCopyWithImpl<$Res>;
  $Res call(
      {String breed,
      String country,
      String origin,
      String coat,
      String pattern});
}

/// @nodoc
class _$CatBreedCopyWithImpl<$Res> implements $CatBreedCopyWith<$Res> {
  _$CatBreedCopyWithImpl(this._value, this._then);

  final CatBreed _value;
  // ignore: unused_field
  final $Res Function(CatBreed) _then;

  @override
  $Res call({
    Object? breed = freezed,
    Object? country = freezed,
    Object? origin = freezed,
    Object? coat = freezed,
    Object? pattern = freezed,
  }) {
    return _then(_value.copyWith(
      breed: breed == freezed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      coat: coat == freezed
          ? _value.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as String,
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CatBreedCopyWith<$Res> implements $CatBreedCopyWith<$Res> {
  factory _$CatBreedCopyWith(_CatBreed value, $Res Function(_CatBreed) then) =
      __$CatBreedCopyWithImpl<$Res>;
  @override
  $Res call(
      {String breed,
      String country,
      String origin,
      String coat,
      String pattern});
}

/// @nodoc
class __$CatBreedCopyWithImpl<$Res> extends _$CatBreedCopyWithImpl<$Res>
    implements _$CatBreedCopyWith<$Res> {
  __$CatBreedCopyWithImpl(_CatBreed _value, $Res Function(_CatBreed) _then)
      : super(_value, (v) => _then(v as _CatBreed));

  @override
  _CatBreed get _value => super._value as _CatBreed;

  @override
  $Res call({
    Object? breed = freezed,
    Object? country = freezed,
    Object? origin = freezed,
    Object? coat = freezed,
    Object? pattern = freezed,
  }) {
    return _then(_CatBreed(
      breed: breed == freezed
          ? _value.breed
          : breed // ignore: cast_nullable_to_non_nullable
              as String,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      origin: origin == freezed
          ? _value.origin
          : origin // ignore: cast_nullable_to_non_nullable
              as String,
      coat: coat == freezed
          ? _value.coat
          : coat // ignore: cast_nullable_to_non_nullable
              as String,
      pattern: pattern == freezed
          ? _value.pattern
          : pattern // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatBreed implements _CatBreed {
  const _$_CatBreed(
      {this.breed = '',
      this.country = '',
      this.origin = '',
      this.coat = '',
      this.pattern = ''});

  factory _$_CatBreed.fromJson(Map<String, dynamic> json) =>
      _$_$_CatBreedFromJson(json);

  @JsonKey(defaultValue: '')
  @override
  final String breed;
  @JsonKey(defaultValue: '')
  @override
  final String country;
  @JsonKey(defaultValue: '')
  @override
  final String origin;
  @JsonKey(defaultValue: '')
  @override
  final String coat;
  @JsonKey(defaultValue: '')
  @override
  final String pattern;

  @override
  String toString() {
    return 'CatBreed(breed: $breed, country: $country, origin: $origin, coat: $coat, pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatBreed &&
            (identical(other.breed, breed) ||
                const DeepCollectionEquality().equals(other.breed, breed)) &&
            (identical(other.country, country) ||
                const DeepCollectionEquality()
                    .equals(other.country, country)) &&
            (identical(other.origin, origin) ||
                const DeepCollectionEquality().equals(other.origin, origin)) &&
            (identical(other.coat, coat) ||
                const DeepCollectionEquality().equals(other.coat, coat)) &&
            (identical(other.pattern, pattern) ||
                const DeepCollectionEquality().equals(other.pattern, pattern)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(breed) ^
      const DeepCollectionEquality().hash(country) ^
      const DeepCollectionEquality().hash(origin) ^
      const DeepCollectionEquality().hash(coat) ^
      const DeepCollectionEquality().hash(pattern);

  @JsonKey(ignore: true)
  @override
  _$CatBreedCopyWith<_CatBreed> get copyWith =>
      __$CatBreedCopyWithImpl<_CatBreed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CatBreedToJson(this);
  }
}

abstract class _CatBreed implements CatBreed {
  const factory _CatBreed(
      {String breed,
      String country,
      String origin,
      String coat,
      String pattern}) = _$_CatBreed;

  factory _CatBreed.fromJson(Map<String, dynamic> json) = _$_CatBreed.fromJson;

  @override
  String get breed => throw _privateConstructorUsedError;
  @override
  String get country => throw _privateConstructorUsedError;
  @override
  String get origin => throw _privateConstructorUsedError;
  @override
  String get coat => throw _privateConstructorUsedError;
  @override
  String get pattern => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CatBreedCopyWith<_CatBreed> get copyWith =>
      throw _privateConstructorUsedError;
}
