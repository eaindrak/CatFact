import 'package:cat_fact/const/urlconst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/model/cat_fact_list.dart';
import 'package:cat_fact/network/dio_client.dart';
import 'package:dio/dio.dart';

abstract class ICatRepository{
  Future<CatFact> getRandomCatFact();
  Future<CatFactList> getAllCatFactList(int page_index);
}

class CatRepository implements ICatRepository{
  
  DioClient dioClient=DioClient(catUrl,new Dio());

  @override
  Future<CatFact> getRandomCatFact() async{
    var response=await dioClient.get("/fact");
    return CatFact(fact: response['fact'],length: response['length']);
  }

  @override
  Future<CatFactList> getAllCatFactList(int page_index) async{
    var response=await dioClient.get("/facts?page=$page_index");
    List<CatFact> factList=[];
    if(response["data"].length>0) response["data"].forEach((data){
      factList.add(new CatFact(fact: data['fact'],length: data['length']));
    });
    return CatFactList(currentPage: response['current_page'],catFactDataList: factList,lastPage: response['last_page']);
  }

}