import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/pageObj.dart';
import 'package:cat_fact/ui/cat/cat_homes.dart';
import 'package:cat_fact/ui/langSetting.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cat_favourites_page.dart';

final controller = PageController(
  initialPage: 0,
);
class CatHomePage extends StatefulWidget {
  const CatHomePage({ Key? key }) : super(key: key);

  @override
  _CatHomePageState createState() => _CatHomePageState();
}
class _CatHomePageState extends State<CatHomePage> {

  @override
  Widget build(BuildContext context) {

    var _pages=[
      PageObj(bgColor: ColorConst.exodusFruit,mainWidget: CatRandomHome(),),
      PageObj(bgColor: ColorConst.shyMoment,mainWidget: CatAllFactsHome(),),
      PageObj(bgColor: ColorConst.brightyYellow,mainWidget: CatAllBreedsHome(),)
    ];

    return PageView.builder(
      controller: controller,
      itemBuilder: (context,index){
        return Scaffold(
          backgroundColor: _pages[index%3].bgColor,
          appBar: AppBar(
            backgroundColor: _pages[index%3].bgColor,
            title: Text("Hey Hooman!!!",style: TextStyles.largeText.copyWith(color: index%3==2?ColorConst.exodusFruit:ColorConst.cityLight),),
            actions: [
              IconButton(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>CatFavPage())),
                icon: SvgPicture.asset(
                  "assets/images/heart.svg",
                  semanticsLabel: 'Heart Image',
                  color: index%3==2?ColorConst.exodusFruit:ColorConst.cityLight,
                ),
              ),
              IconButton(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>LangSettingPage())), 
                icon: Center(child: SvgPicture.asset("assets/images/us.svg"))
              )
            ],
          ),
          body: _pages[index%3].mainWidget,
        );
      }
    );
  }

}