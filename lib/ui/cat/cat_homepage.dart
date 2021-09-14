import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/ui/cat/cat_breed_list.dart';
import 'package:cat_fact/widgets/cat_home_widget.dart';
import 'package:flutter/material.dart';
import 'cat_allfacts_list.dart';
import 'cat_random_fact.dart';

class CatHomePage extends StatefulWidget {
  const CatHomePage({ Key? key }) : super(key: key);

  @override
  _CatHomePageState createState() => _CatHomePageState();
}
class _CatHomePageState extends State<CatHomePage> {

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
            ElevatedButton(
              child: Text("Cat Home Page"),
              onPressed: (){
                String _txt="Do you want to know more about us???";
                String _img="assets/images/emojione_cat.svg";
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CatHomeWidget(bgColor:ColorConst.exodusFruit ,questionText: _txt,img: _img,)));
              },
            ),
          ],
        ),
      ),
    );
  }
}