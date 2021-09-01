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
      state = CatRandomFactState.data(catFact: catFact);
    } catch (e) {
      print(e.toString());
      state = CatRandomFactState.error('Error!');
    }
  }
  
}