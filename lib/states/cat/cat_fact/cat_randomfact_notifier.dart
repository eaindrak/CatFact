part of 'cat_provider.dart';

class CatNotifier extends StateNotifier<CatRandomFactState> {
  CatNotifier({
    required ICatRepository catRepository,required ICatLocalRepository catLocalRepository
  })   : _catRepository = catRepository,_catLocalRepository=catLocalRepository,
        super(const CatRandomFactState.initial());

  final ICatRepository _catRepository;final ICatLocalRepository _catLocalRepository;

  Future<void> getRandomFact() async {
    state = const CatRandomFactState.loading();
    try {
      final catFact = await _catRepository.getRandomCatFact();
      String _imageName=await _getRandomImage();
      final res=await _getFavorite(catFact);
      state = CatRandomFactState.data(catFact: catFact,imageName: _imageName,sourceLan: "en",translateText: TranslateText(originalText: catFact.fact,transalatedText: ""),isSaved: res,msg: "");
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<void> getExistingFact({required CatFact catFact}) async {
    state = const CatRandomFactState.loading();
    try {
      String _imageName=await _getRandomImage();
      final res=await _getFavorite(catFact);
      state = CatRandomFactState.data(isSaved: res,catFact: catFact,imageName: _imageName,sourceLan: "en",translateText: TranslateText(originalText: catFact.fact,transalatedText: ""),msg: "");
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<void> translateText({required CatFact catFact,required String image,required String localeCode,required TranslateText translateText,required int isSaved}) async {
    state = const CatRandomFactState.loading();
    try {
      if(localeCode!="en"&&translateText.transalatedText==""){
        final translator = GoogleTranslator();
        var _data=await translator.translate(catFact.fact, from: 'en', to: localeCode);
        TranslateText translateText=new TranslateText(originalText: catFact.fact, transalatedText: _data.text);
        state = CatRandomFactState.data(catFact: CatFact(fact: translateText.transalatedText,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText,isSaved: isSaved,msg: "");
      }
      else if (localeCode!="en"&&translateText.transalatedText!=""&&translateText.transalatedText.length>0){
        state = CatRandomFactState.data(catFact: CatFact(fact: translateText.transalatedText,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText,isSaved: isSaved,msg: "");
      }
      else{
        state = CatRandomFactState.data(catFact: CatFact(fact: translateText.originalText,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText,isSaved: isSaved,msg: "");
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

  Future<void> addToFavorite({required CatFact catFact,required String image,required String localeCode,required TranslateText translateText})async{
    state = const CatRandomFactState.loading();
    try {
      int _id=DateTime.now().millisecondsSinceEpoch;
      final res=await _catLocalRepository.saveFavorite(catFact,_id);
      state = CatRandomFactState.data(catFact: CatFact(fact: catFact.fact,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText,isSaved: res,msg: res>0?"Add To Favorite":"Cannot Add To Favorite");
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<void> removeFavorite({required CatFact catFact,required String image,required String localeCode,required TranslateText translateText})async{
    state = const CatRandomFactState.loading();
    try {
      final res=await _catLocalRepository.removeFavorite(catFact);
      state = CatRandomFactState.data(catFact: CatFact(fact: catFact.fact,length: catFact.length),imageName: image,sourceLan: localeCode,translateText: translateText,isSaved: res,msg: res>0?"Remove From Favorite":"Cannot Remove From Favorite");
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<int> _getFavorite(CatFact catFact)async{
    try{
      return await _catLocalRepository.checkFact(catFact);
    }catch(e){
      return 0;
    }
  }
  
}