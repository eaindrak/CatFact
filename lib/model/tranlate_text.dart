import 'package:cat_fact/model/cat_breed.dart';

class TranslateText{
  String originalText;
  String transalatedText;
  TranslateText({required this.originalText,required this.transalatedText});
}

class TranslateBreed{
  CatBreed originalBreed;
  CatBreed translatedBreed;
  TranslateBreed({required this.originalBreed,required this.translatedBreed});
}