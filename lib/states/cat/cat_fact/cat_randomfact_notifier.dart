part of 'cat_provider.dart';

class CatNotifier extends StateNotifier<CatRandomFactState> {
  CatNotifier({
    required ICatRepository catRepository,
  })   : _catRepository = catRepository,
        super(const CatRandomFactState.initial());

  final ICatRepository _catRepository;

  Future<void> getRandomFact() async {
    state = const CatRandomFactState.loading();
    try {
      final catFact = await _catRepository.getRandomCatFact();
      String _imageName=await _getRandomImage();
      state = CatRandomFactState.data(catFact: catFact,imageName: _imageName,sourceLan: "en",translateText: TranslateText(originalText: catFact.fact,transalatedText: ""));
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<void> getExistingFact({required CatFact catFact}) async {
    state = const CatRandomFactState.loading();
    try {
      String _imageName=await _getRandomImage();
      state = CatRandomFactState.data(catFact: catFact,imageName: _imageName,sourceLan: "en",translateText: TranslateText(originalText: catFact.fact,transalatedText: ""));
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<void> translateText({required CatFact catFact,required String image,required String localeCode,required TranslateText translateText}) async {
    state = const CatRandomFactState.loading();
    try {
      if(localeCode!="en"&&translateText.transalatedText==""){
        final translator = GoogleTranslator();
        var _data=await translator.translate(catFact.fact, from: 'en', to: localeCode);
        TranslateText translateText=new TranslateText(originalText: catFact.fact, transalatedText: _data.text);
        state = CatRandomFactState.data(catFact: CatFact(fact: translateText.transalatedText,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText);
      }
      else if (localeCode!="en"&&translateText.transalatedText!=""&&translateText.transalatedText.length>0){
        state = CatRandomFactState.data(catFact: CatFact(fact: translateText.transalatedText,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText);
      }
      else{
        state = CatRandomFactState.data(catFact: CatFact(fact: translateText.originalText,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText);
      }
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<String> _getRandomImage() async {
    try{
      final _catImage = await _catRepository.getRandomImage();
      return _catImage;
    }catch(e){
      return "";
    }
  }
  
}