part of 'cat_favorite_list_provider.dart';

class CatFavoriteListNotifier extends StateNotifier<CatFavoriteListState> {
  CatFavoriteListNotifier({
    required ICatLocalRepository catLocalRepository,
  })   : _catLocalRepository = catLocalRepository,
        super(const CatFavoriteListState.initial());

  final ICatLocalRepository _catLocalRepository;

  Future<void> getAllfavoriteList() async {
    state = const CatFavoriteListState.loading();
    try {
      final catFactList = await _catLocalRepository.getAllSavedFact();
      state = CatFavoriteListState.data(catFactList: catFactList);
    } catch (e) {
      state = CatFavoriteListState.error(e.toString());
    }
  }
  
}