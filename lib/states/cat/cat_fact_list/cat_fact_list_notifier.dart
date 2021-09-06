part of 'cat_fact_list_provider.dart';

class CatFactListNotifier extends StateNotifier<CatFactListState> {
  CatFactListNotifier({
    required ICatRepository catRepository,
  })   : _catRepository = catRepository,
        super(const CatFactListState.initial());

  final ICatRepository _catRepository;

  Future<void> getAllFactListByPage(int index) async {
    state = const CatFactListState.loading();
    try {
      final catFactList = await _catRepository.getAllCatFactListByPage(index);
      state = CatFactListState.data(catFactList: catFactList);
    } catch (e) {
      state = CatFactListState.error(e.toString());
    }
  }

  Future<String> getRandomImage() async {
    int min = 0;
    int max = catImagesList.length-1;
    var rnd = new Random();
    int r = min + rnd.nextInt(max - min);
    String image_name  = catImagesList[r].toString();
    return image_name;
  }
  
}