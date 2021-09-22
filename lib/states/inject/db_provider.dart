import 'package:cat_fact/db/moor_db.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:translator/translator.dart';

final dbProvider = Provider((_) => AppDatabase());

final translatorProvider = Provider((_) => GoogleTranslator());