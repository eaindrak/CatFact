import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';

class SaveCatToGalleryPage extends StatelessWidget {
  final String imgAssetName;
  const SaveCatToGalleryPage({ Key? key,required this.imgAssetName }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.dracularOrchid,
      appBar: AppBar(
        backgroundColor: ColorConst.dracularOrchid,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,color: ColorConst.cityLight,),onPressed: (){
          Navigator.pop(context);
        },),
        title: Text("Hooman, Store Me In Gallery!!!",style: TextStyles.smallText.copyWith(color: ColorConst.cityLight),),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.asset(imgAssetName,fit: BoxFit.contain,),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
        child: Row(children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 7),
              decoration: BoxDecoration(color: ColorConst.cityLight,borderRadius: BorderRadius.circular(20)),
              child: Text("Save To Gallery",textAlign: TextAlign.center,),
            ),
          ),
          IconButton(icon: Icon(Icons.share),color: ColorConst.cityLight,onPressed: (){},)
        ],),
      ),
    );
  }
}