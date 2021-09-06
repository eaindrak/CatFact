// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_breed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CatBreed _$_$_CatBreedFromJson(Map<String, dynamic> json) {
  return _$_CatBreed(
    breed: json['breed'] as String? ?? '',
    country: json['country'] as String? ?? '',
    origin: json['origin'] as String? ?? '',
    coat: json['coat'] as String? ?? '',
    pattern: json['pattern'] as String? ?? '',
  );
}

Map<String, dynamic> _$_$_CatBreedToJson(_$_CatBreed instance) =>
    <String, dynamic>{
      'breed': instance.breed,
      'country': instance.country,
      'origin': instance.origin,
      'coat': instance.coat,
      'pattern': instance.pattern,
    };
