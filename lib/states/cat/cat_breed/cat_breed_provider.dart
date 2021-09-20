import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/model/tranlate_text.dart';
import 'package:translator/translator.dart';
import 'cat_breed_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
export 'cat_breed_state.dart';

part 'cat_breed_notifier.dart';

final catBreedNotifierProvider = StateNotifierProvider<CatBreedNotifier, CatBreedState>(
  (ref) => CatBreedNotifier(),
);
