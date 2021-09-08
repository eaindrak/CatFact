import 'package:cat_fact/ui/cat/cat_breed_list.dart';
import 'package:flutter/material.dart';
import 'cat_allfacts_list.dart';
import 'cat_random_fact.dart';

class CatHomePage extends StatelessWidget {
  const CatHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Get Random Fact"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CatRandomFact()));
              },
            ),
            ElevatedButton(
              child: Text("Get All Facts"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CatAllFactsPage()));
              },
            ),
            ElevatedButton(
              child: Text("Get All Breeds"),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CatBreedListPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}