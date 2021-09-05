import 'dart:math';

import 'package:cat_fact/const/assetConst.dart';
import 'package:cat_fact/repository/cat_repository.dart';
import 'cat_fact_list_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
export 'cat_fact_list_state.dart';

part 'cat_fact_list_notifier.dart';

final catFactListNotifierProvider = StateNotifierProvider<CatFactListNotifier, CatFactListState>(
  (ref) => CatFactListNotifier(
    catRepository: ref.watch(_catRepositoryProvider),
  ),
);

//* Repository
final _catRepositoryProvider = Provider<ICatRepository>(
  (ref) => CatRepository(),
);