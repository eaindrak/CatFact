import 'package:moor_flutter/moor_flutter.dart';

part 'moor_db.g.dart';

@DataClassName("CatFact")
class CatFacts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fact => text()();
  IntColumn get length => integer()();
}

@UseMoor(tables: [CatFacts],queries: {"checkExists":"SELECT EXISTS(SELECT fact from cat_facts WHERE fact=:factName);"})
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: "db.sqlite", logStatements: true));
  int get schemaVersion => 1;

  Future<List<CatFact>> getAllSavedFacts() => select(catFacts).get();

  Future<bool> checkFacts(String factName)async{
    return checkExists(factName).getSingle();
  }

  Future<int> saveFavorite(CatFact entry) {
    return into(catFacts).insert(entry);
  }

  Future<int> removeFavorite(String factname) {
    return (delete(catFacts)..where((t) => t.fact.equals(factname))).go();
  }

}