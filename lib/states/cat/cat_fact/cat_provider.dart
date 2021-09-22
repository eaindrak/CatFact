import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:cat_fact/repository/cat_local_repository.dart';
import 'package:cat_fact/repository/cat_repository.dart';
import 'package:translator/translator.dart';
import 'cat_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
export 'cat_state.dart';

part 'cat_randomfact_notifier.dart';

final catNotifierProvider = StateNotifierProvider<CatNotifier, CatRandomFactState>(
  (ref) => CatNotifier(
    catRepository: ref.watch(_catRepositoryProvider),
    catLocalRepository: ref.watch(_catLocalRepository)
  ),
);

//* Repository
final _catRepositoryProvider = Provider<ICatRepository>(
  (ref) => CatRepository(),
);
final _catLocalRepository = Provider<ICatLocalRepository>(
  (ref) => CatLocalRepository(ref),
);