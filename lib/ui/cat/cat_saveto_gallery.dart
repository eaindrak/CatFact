import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';

class SaveCatToGalleryPage extends StatelessWidget {
  final String networkImage;
  const SaveCatToGalleryPage({ Key? key,required this.networkImage }) : super(key: key);

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
        child: CachedNetworkImage(
          imageUrl: networkImage,
          fit: BoxFit.contain,
          placeholder: (context, url) => Container(width: 50,height: 50,child: CircularProgressIndicator()),
          errorWidget: (context, url, error) => Image.asset("assets/images/cat_img.png"),
        ),
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