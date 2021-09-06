// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cat_breed_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatBreedList _$CatBreedListFromJson(Map<String, dynamic> json) {
  return _CatBreedList.fromJson(json);
}

/// @nodoc
class _$CatBreedListTearOff {
  const _$CatBreedListTearOff();

  _CatBreedList call(
      {int currentPage = 0,
      List<CatBreed> catbreedList = const [],
      int lastPage = 0}) {
    return _CatBreedList(
      currentPage: currentPage,
      catbreedList: catbreedList,
      lastPage: lastPage,
    );
  }

  CatBreedList fromJson(Map<String, Object> json) {
    return CatBreedList.fromJson(json);
  }
}

/// @nodoc
const $CatBreedList = _$CatBreedListTearOff();

/// @nodoc
mixin _$CatBreedList {
  int get currentPage => throw _privateConstructorUsedError;
  List<CatBreed> get catbreedList => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatBreedListCopyWith<CatBreedList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatBreedListCopyWith<$Res> {
  factory $CatBreedListCopyWith(
          CatBreedList value, $Res Function(CatBreedList) then) =
      _$CatBreedListCopyWithImpl<$Res>;
  $Res call({int currentPage, List<CatBreed> catbreedList, int lastPage});
}

/// @nodoc
class _$CatBreedListCopyWithImpl<$Res> implements $CatBreedListCopyWith<$Res> {
  _$CatBreedListCopyWithImpl(this._value, this._then);

  final CatBreedList _value;
  // ignore: unused_field
  final $Res Function(CatBreedList) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? catbreedList = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      catbreedList: catbreedList == freezed
          ? _value.catbreedList
          : catbreedList // ignore: cast_nullable_to_non_nullable
              as List<CatBreed>,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CatBreedListCopyWith<$Res>
    implements $CatBreedListCopyWith<$Res> {
  factory _$CatBreedListCopyWith(
          _CatBreedList value, $Res Function(_CatBreedList) then) =
      __$CatBreedListCopyWithImpl<$Res>;
  @override
  $Res call({int currentPage, List<CatBreed> catbreedList, int lastPage});
}

/// @nodoc
class __$CatBreedListCopyWithImpl<$Res> extends _$CatBreedListCopyWithImpl<$Res>
    implements _$CatBreedListCopyWith<$Res> {
  __$CatBreedListCopyWithImpl(
      _CatBreedList _value, $Res Function(_CatBreedList) _then)
      : super(_value, (v) => _then(v as _CatBreedList));

  @override
  _CatBreedList get _value => super._value as _CatBreedList;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? catbreedList = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_CatBreedList(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      catbreedList: catbreedList == freezed
          ? _value.catbreedList
          : catbreedList // ignore: cast_nullable_to_non_nullable
              as List<CatBreed>,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatBreedList implements _CatBreedList {
  const _$_CatBreedList(
      {this.currentPage = 0, this.catbreedList = const [], this.lastPage = 0});

  factory _$_CatBreedList.fromJson(Map<String, dynamic> json) =>
      _$_$_CatBreedListFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int currentPage;
  @JsonKey(defaultValue: const [])
  @override
  final List<CatBreed> catbreedList;
  @JsonKey(defaultValue: 0)
  @override
  final int lastPage;

  @override
  String toString() {
    return 'CatBreedList(currentPage: $currentPage, catbreedList: $catbreedList, lastPage: $lastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatBreedList &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.catbreedList, catbreedList) ||
                const DeepCollectionEquality()
                    .equals(other.catbreedList, catbreedList)) &&
            (identical(other.lastPage, lastPage) ||
                const DeepCollectionEquality()
                    .equals(other.lastPage, lastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(catbreedList) ^
      const DeepCollectionEquality().hash(lastPage);

  @JsonKey(ignore: true)
  @override
  _$CatBreedListCopyWith<_CatBreedList> get copyWith =>
      __$CatBreedListCopyWithImpl<_CatBreedList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CatBreedListToJson(this);
  }
}

abstract class _CatBreedList implements CatBreedList {
  const factory _CatBreedList(
      {int currentPage,
      List<CatBreed> catbreedList,
      int lastPage}) = _$_CatBreedList;

  factory _CatBreedList.fromJson(Map<String, dynamic> json) =
      _$_CatBreedList.fromJson;

  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  List<CatBreed> get catbreedList => throw _privateConstructorUsedError;
  @override
  int get lastPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CatBreedListCopyWith<_CatBreedList> get copyWith =>
      throw _privateConstructorUsedError;
}
