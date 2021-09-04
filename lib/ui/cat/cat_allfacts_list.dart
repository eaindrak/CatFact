import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/model/cat_fact.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CatAllFactsPage extends StatefulWidget {
  const CatAllFactsPage({ Key? key }) : super(key: key);

  @override
  _CatAllFactsPageState createState() => _CatAllFactsPageState();
}

class _CatAllFactsPageState extends State<CatAllFactsPage> {

  List<CatFact> catFactLIst=[
    CatFact(fact: "This is fact one",length: 1),
    CatFact(fact: "This is fact one",length: 1),
    CatFact(fact: "This is fact one",length: 1),
  ];
  List<String> ddList=['1','2','3'];
  String _index="1";

  @override
  Widget build(BuildContext context) {
    return _catFactList();
  }

  Widget _catFactList(){
    return Scaffold(
      backgroundColor: ColorConst.shyMoment,
      appBar: AppBar(
        backgroundColor: ColorConst.shyMoment,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: ColorConst.cityLight,),onPressed: (){
          Navigator.pop(context);
        },),
        title: Text("Hey Hooman!!!",style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),),
        actions: [
          IconButton(icon: Icon(Icons.search,color: ColorConst.brightyYellow,),onPressed: (){},),
          DropdownButton<String>(
            value: _index,
            items: ddList.map((String e) => DropdownMenuItem<String>(child: Text(e,style: TextStyles.largeText.copyWith(color: ColorConst.cityLight),),value: e,)).toList(),
            onChanged: (String? newVal){
              setState(() {
                this._index=newVal!;
              });
            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 5),
        child: ListView.separated(
          padding: EdgeInsets.all(7),
          itemBuilder: (context,index){
            return ListTile(
              leading: index%2!=0?SvgPicture.asset("assets/images/cat_heart.svg",semanticsLabel: 'Acme Logo',width: 50,):null,
              trailing: index%2==0?SvgPicture.asset("assets/images/cat_heart.svg",semanticsLabel: 'Acme Logo',width: 50,):null,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              tileColor: ColorConst.cityLight,
              title: Text(catFactLIst[index].fact,textAlign: index%2==0?TextAlign.right:TextAlign.left,),
            );
          },
          separatorBuilder: (context,index){
            return Padding(padding: EdgeInsets.only(top: 5));
          },
          itemCount: catFactLIst.length,
        )
      ),
    );
  }
}