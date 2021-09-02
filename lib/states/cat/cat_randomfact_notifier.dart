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
      state = CatRandomFactState.data(catFact: catFact,imageName: _imageName);
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }

  Future<String> _getRandomImage() async {
    int min = 0;
    int max = catImagesList.length-1;
    var rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    String image_name  = catImagesList[r].toString();
    return image_name;
  }
  
}