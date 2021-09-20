part of 'cat_breed_provider.dart';

class CatBreedNotifier extends StateNotifier<CatBreedState> {
  CatBreedNotifier() : super(const CatBreedState.initial());

  Future<void> getExistingBreed({required CatBreed catBreed,required String svgImage}) async {
    state = const CatBreedState.loading();
    try {
      CatBreed original=catBreed;
      CatBreed translated=new CatBreed();
      state = CatBreedState.data(catBreed: catBreed,imageName: svgImage,sourceLan: "en",translateBreed: TranslateBreed(originalBreed: original,translatedBreed: translated,),isTranslated: false);
    } catch (e) {
      print(e.toString());
      state = CatBreedState.error('Error!');
    }
  }

  Future<void> translateBreed({required CatBreed catBreed,required String svgImage,required String localeCode,required TranslateBreed translateBreed,required bool isTranslated}) async {
    state = const CatBreedState.loading();
    try {
      if(localeCode!="en"&&!isTranslated){
        final translator = GoogleTranslator();
        String _breedName="";String _countryName="";String _coatName="";String _patternName="";String _originName="";
        if(catBreed.breed!=""){
          var _breedNameTrans=await translator.translate(catBreed.breed, from: 'en', to: localeCode);
          _breedName=_breedNameTrans.text;
        }
        if(catBreed.country!=""){
          var _countryTrans=await translator.translate(catBreed.country, from: 'en', to: localeCode);
          _countryName=_countryTrans.text;
        }
        if(catBreed.origin!=""){
          var _originTrans=await translator.translate(catBreed.origin, from: 'en', to: localeCode);
          _originName=_originTrans.text;
        }
        if(catBreed.coat!=""){
          var _coatTrans=await translator.translate(catBreed.coat, from: 'en', to: localeCode);
          _coatName=_coatTrans.text;
        }
        if(catBreed.pattern!=""){
          var _patternTrans=await translator.translate(catBreed.pattern, from: 'en', to: localeCode);
          _patternName=_patternTrans.text;
        }
        CatBreed translated=CatBreed(breed: _breedName,country: _countryName,coat: _coatName,pattern: _patternName,origin: _originName);
        state = CatBreedState.data(catBreed: translated,imageName: svgImage,sourceLan: localeCode,translateBreed: TranslateBreed(originalBreed: catBreed,translatedBreed: translated,),isTranslated: true);
      }
      else if (localeCode!="en"&&isTranslated){
        state = CatBreedState.data(catBreed: translateBreed.translatedBreed,imageName: svgImage,sourceLan: localeCode,translateBreed: TranslateBreed(originalBreed: translateBreed.originalBreed,translatedBreed: translateBreed.translatedBreed,),isTranslated: true);
      }
      else{
        state = CatBreedState.data(catBreed: translateBreed.originalBreed,imageName: svgImage,sourceLan: localeCode,translateBreed: TranslateBreed(originalBreed: translateBreed.originalBreed,translatedBreed: translateBreed.translatedBreed,),isTranslated: true);
      }
    } catch (e) {
      print(e.toString());
      state = CatBreedState.error('Error!');
    }
  }
  
}