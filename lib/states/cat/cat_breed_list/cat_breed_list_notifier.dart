part of 'cat_breed_list_provider.dart';

class CatBreedListNotifier extends StateNotifier<CatBreedListState> {
  CatBreedListNotifier({
    required ICatRepository catRepository,
  })   : _catRepository = catRepository,
        super(const CatBreedListState.initial());

  final ICatRepository _catRepository;

  Future<void> getAllBreedListByPage(int index) async {
    state = const CatBreedListState.loading();
    try {
      final catBreedList = await _catRepository.getCatBreedListByPage(index);
      state = CatBreedListState.data(catBreedList: catBreedList);
    } catch (e) {
      state = CatBreedListState.error(e.toString());
    }
  }
  
}