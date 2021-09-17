import 'package:cat_fact/ui/cat/cat_allfacts_list.dart';
import 'package:cat_fact/ui/cat/cat_breed_list.dart';
import 'package:cat_fact/ui/cat/cat_homepage.dart';
import 'package:cat_fact/ui/cat/cat_random_fact.dart';
import 'package:cat_fact/widgets/btn_widgets.dart';
import 'package:cat_fact/widgets/cat_home_widget.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class CatRandomHome extends StatelessWidget {
  const CatRandomHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CatRandomFact())),
      child: CatHomeWidget(questionText: "Do you want to know more about me???",img: "assets/images/emojione_cat.svg",nextWidget: _btnSection(context),)
    );
  }

  Widget _btnSection(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkResponse(
          onTap: ()=>controller.animateToPage(1%3, duration: Duration(seconds: 1), curve: Curves.easeIn),
          child: ArrowBtn(),
        ),
        DotBtn(),
        DotBtn()
      ],
    );
  }
}

class CatAllFactsHome extends StatelessWidget {
  const CatAllFactsHome({ Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CatAllFactsPage())),
      child: CatHomeWidget(questionText: "Do you want to know more facts about us???",img: "assets/images/cat_heart.svg",nextWidget: _btnSection(context),)
    );
  }

  Widget _btnSection(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DotBtn(),
        InkResponse(
          onTap: ()=>controller.animateToPage(2%3, duration: Duration(seconds: 1), curve: Curves.easeIn),
          child: ArrowBtn(),
        ),
        DotBtn()
      ],
    );
  }
}

class CatAllBreedsHome extends StatelessWidget {
  const CatAllBreedsHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CatBreedListPage())),
      child: CatHomeWidget(questionText: "Do you want to see our kids???",img: "assets/images/noto-v1_cat.svg",nextWidget: _btnSection(context),)
    );
  }

  Widget _btnSection(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DotBtn(),
        DotBtn(),
        InkResponse(
          onTap: ()=>controller.animateToPage(0%3, duration: Duration(seconds:1), curve: Curves.easeIn),
          child: ArrowBtn(),
        ),
      ],
    );
  }
}