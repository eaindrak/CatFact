import 'package:cat_fact/const/urlconst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/network/dio_client.dart';
import 'package:dio/dio.dart';

abstract class ICatRepository{
  Future<CatFact> getRandomCatFact();
}

class CatRepository implements ICatRepository{
  
  DioClient dioClient=DioClient(catUrl,new Dio());

  @override
  Future<CatFact> getRandomCatFact() async{
    var response=await dioClient.get("/fact");
    return CatFact(fact: response['fact'],length: response['length']);
  }

}