import 'package:cat_fact/repository/cat_local_repository.dart';
import 'package:cat_fact/states/cat/cat_favorite_list/cat_favorite_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
export 'cat_favorite_list_state.dart';

part 'cat_favorite_list_notifier.dart';

final catFavoriteListNotifierProvider = StateNotifierProvider<CatFavoriteListNotifier, CatFavoriteListState>(
  (ref) => CatFavoriteListNotifier(
    catLocalRepository: ref.watch(_catLocalRepositoryProvider),
  ),
);

//* Repository
final _catLocalRepositoryProvider = Provider<ICatLocalRepository>(
  (ref) => CatLocalRepository(ref),
);