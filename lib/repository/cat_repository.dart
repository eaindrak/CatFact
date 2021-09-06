import 'package:cat_fact/const/urlconst.dart';
import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/model/cat_breed_list.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/model/cat_fact_list.dart';
import 'package:cat_fact/network/dio_client.dart';
import 'package:dio/dio.dart';

abstract class ICatRepository{
  Future<CatFact> getRandomCatFact();
  Future<CatFactList> getAllCatFactListByPage(int page_index);
  Future<CatBreedList> getCatBreedListByPage(int page_index);
}

class CatRepository implements ICatRepository{
  
  DioClient dioClient=DioClient(catUrl,new Dio());

  @override
  Future<CatFact> getRandomCatFact() async{
    var response=await dioClient.get("/fact");
    return CatFact(fact: response['fact'],length: response['length']);
  }

  @override
  Future<CatFactList> getAllCatFactListByPage(int page_index) async{
    var response=await dioClient.get("/facts?page=$page_index");
    List<CatFact> factList=[];
    if(response["data"].length>0) response["data"].forEach((data){
      factList.add(new CatFact(fact: data['fact'],length: data['length']));
    });
    return CatFactList(currentPage: response['current_page'],catFactDataList: factList,lastPage: response['last_page']);
  }

  @override
  Future<CatBreedList> getCatBreedListByPage(int page_index)async {
    var response=await dioClient.get("/breeds?page=$page_index");
    List<CatBreed> breedList=[];
    if(response["data"].length>0) response["data"].forEach((data){
      breedList.add(new CatBreed(breed: data['breed'],country: data['country'],origin: data['origin'],coat: data['coat'],pattern: data['pattern']));
    });
    return CatBreedList(currentPage: response['current_page'],catbreedList: breedList,lastPage: response['last_page']);
  }

}