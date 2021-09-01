import 'package:cat_fact/repository/cat_repository.dart';
import 'cat_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
export 'cat_state.dart';

part 'cat_randomfact_notifier.dart';

final catNotifierProvider = StateNotifierProvider<CatNotifier, CatRandomFactState>(
  (ref) => CatNotifier(
    catRepository: ref.watch(_catRepositoryProvider),
  ),
);

//* Repository
final _catRepositoryProvider = Provider<ICatRepository>(
  (ref) => CatRepository(),
);