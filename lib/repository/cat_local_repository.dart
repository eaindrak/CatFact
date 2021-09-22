import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/states/inject/db_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../db/moor_db.dart' as db;

abstract class ICatLocalRepository{
  Future<List<CatFact>> getAllSavedFact();
  Future<int> saveFavorite(CatFact catFact);
  Future<int> checkFact(CatFact catFact);
}

class CatLocalRepository implements ICatLocalRepository {

  CatLocalRepository(this.ref);
  final ProviderRefBase ref;

  @override
  Future<List<CatFact>> getAllSavedFact() async{
    List<db.CatFact> catEntityList=await ref.read(dbProvider).getAllSavedFacts();
    if(catEntityList.length>0){
      return catEntityList.map((e) => CatFact(fact: e.fact,length: e.length)).toList();
    }
    return [];
  }

  @override
  Future<int> saveFavorite(CatFact catFact)async {
    int res=await ref.read(dbProvider).saveFavorite(db.CatFact(fact: catFact.fact,length: catFact.length,id: 1));
    return res;
  }

  @override
  Future<int> checkFact(CatFact _catFact) async{
    final res= await ref.read(dbProvider).checkFacts(_catFact.fact);
    return res?1:0;
  }
  
}