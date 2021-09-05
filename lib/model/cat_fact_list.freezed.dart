// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'cat_fact_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CatFactList _$CatFactListFromJson(Map<String, dynamic> json) {
  return _CatFactList.fromJson(json);
}

/// @nodoc
class _$CatFactListTearOff {
  const _$CatFactListTearOff();

  _CatFactList call(
      {int currentPage = 0,
      List<CatFact> catFactDataList = const [],
      int lastPage = 0}) {
    return _CatFactList(
      currentPage: currentPage,
      catFactDataList: catFactDataList,
      lastPage: lastPage,
    );
  }

  CatFactList fromJson(Map<String, Object> json) {
    return CatFactList.fromJson(json);
  }
}

/// @nodoc
const $CatFactList = _$CatFactListTearOff();

/// @nodoc
mixin _$CatFactList {
  int get currentPage => throw _privateConstructorUsedError;
  List<CatFact> get catFactDataList => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CatFactListCopyWith<CatFactList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CatFactListCopyWith<$Res> {
  factory $CatFactListCopyWith(
          CatFactList value, $Res Function(CatFactList) then) =
      _$CatFactListCopyWithImpl<$Res>;
  $Res call({int currentPage, List<CatFact> catFactDataList, int lastPage});
}

/// @nodoc
class _$CatFactListCopyWithImpl<$Res> implements $CatFactListCopyWith<$Res> {
  _$CatFactListCopyWithImpl(this._value, this._then);

  final CatFactList _value;
  // ignore: unused_field
  final $Res Function(CatFactList) _then;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? catFactDataList = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_value.copyWith(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      catFactDataList: catFactDataList == freezed
          ? _value.catFactDataList
          : catFactDataList // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$CatFactListCopyWith<$Res>
    implements $CatFactListCopyWith<$Res> {
  factory _$CatFactListCopyWith(
          _CatFactList value, $Res Function(_CatFactList) then) =
      __$CatFactListCopyWithImpl<$Res>;
  @override
  $Res call({int currentPage, List<CatFact> catFactDataList, int lastPage});
}

/// @nodoc
class __$CatFactListCopyWithImpl<$Res> extends _$CatFactListCopyWithImpl<$Res>
    implements _$CatFactListCopyWith<$Res> {
  __$CatFactListCopyWithImpl(
      _CatFactList _value, $Res Function(_CatFactList) _then)
      : super(_value, (v) => _then(v as _CatFactList));

  @override
  _CatFactList get _value => super._value as _CatFactList;

  @override
  $Res call({
    Object? currentPage = freezed,
    Object? catFactDataList = freezed,
    Object? lastPage = freezed,
  }) {
    return _then(_CatFactList(
      currentPage: currentPage == freezed
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      catFactDataList: catFactDataList == freezed
          ? _value.catFactDataList
          : catFactDataList // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
      lastPage: lastPage == freezed
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CatFactList implements _CatFactList {
  const _$_CatFactList(
      {this.currentPage = 0,
      this.catFactDataList = const [],
      this.lastPage = 0});

  factory _$_CatFactList.fromJson(Map<String, dynamic> json) =>
      _$_$_CatFactListFromJson(json);

  @JsonKey(defaultValue: 0)
  @override
  final int currentPage;
  @JsonKey(defaultValue: const [])
  @override
  final List<CatFact> catFactDataList;
  @JsonKey(defaultValue: 0)
  @override
  final int lastPage;

  @override
  String toString() {
    return 'CatFactList(currentPage: $currentPage, catFactDataList: $catFactDataList, lastPage: $lastPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CatFactList &&
            (identical(other.currentPage, currentPage) ||
                const DeepCollectionEquality()
                    .equals(other.currentPage, currentPage)) &&
            (identical(other.catFactDataList, catFactDataList) ||
                const DeepCollectionEquality()
                    .equals(other.catFactDataList, catFactDataList)) &&
            (identical(other.lastPage, lastPage) ||
                const DeepCollectionEquality()
                    .equals(other.lastPage, lastPage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(currentPage) ^
      const DeepCollectionEquality().hash(catFactDataList) ^
      const DeepCollectionEquality().hash(lastPage);

  @JsonKey(ignore: true)
  @override
  _$CatFactListCopyWith<_CatFactList> get copyWith =>
      __$CatFactListCopyWithImpl<_CatFactList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_CatFactListToJson(this);
  }
}

abstract class _CatFactList implements CatFactList {
  const factory _CatFactList(
      {int currentPage,
      List<CatFact> catFactDataList,
      int lastPage}) = _$_CatFactList;

  factory _CatFactList.fromJson(Map<String, dynamic> json) =
      _$_CatFactList.fromJson;

  @override
  int get currentPage => throw _privateConstructorUsedError;
  @override
  List<CatFact> get catFactDataList => throw _privateConstructorUsedError;
  @override
  int get lastPage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CatFactListCopyWith<_CatFactList> get copyWith =>
      throw _privateConstructorUsedError;
}
