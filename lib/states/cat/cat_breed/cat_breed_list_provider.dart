import 'package:cat_fact/repository/cat_repository.dart';
import 'cat_breed_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
export 'cat_breed_list_state.dart';

part 'cat_breed_list_notifier.dart';

final catBreedListNotifierProvider = StateNotifierProvider<CatBreedListNotifier, CatBreedListState>(
  (ref) => CatBreedListNotifier(
    catRepository: ref.watch(_catRepositoryProvider),
  ),
);

//* Repository
final _catRepositoryProvider = Provider<ICatRepository>(
  (ref) => CatRepository(),
);