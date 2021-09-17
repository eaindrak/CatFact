import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:share_plus/share_plus.dart';

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
          placeholder: (context, url) => Image.asset("assets/images/Loading.gif",width: MediaQuery.of(context).size.width*1/3,),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 8),
        child: Row(children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: ()=>_checkPermission(context),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 7),
                decoration: BoxDecoration(color: ColorConst.cityLight,borderRadius: BorderRadius.circular(20)),
                child: Text("Save To Gallery",textAlign: TextAlign.center,),
              ),
            ),
          ),
          IconButton(icon: Icon(Icons.share),color: ColorConst.cityLight,onPressed: ()async{
            await Share.share(networkImage,subject: "Hey Hooman!!");
          },)
        ],),
      ),
    );
  }

  _checkPermission(BuildContext context)async{
    var status = await Permission.storage.status;
    if(status.isGranted){
      _save(context);
    }else{
      var _request=await Permission.storage.request();
      if(_request.isGranted){
        _save(context);
      }else{
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Permission denied"),duration: Duration(seconds: 3),));
      }
    }
  }

  _save(BuildContext context)async{
    String _curTime=DateTime.now().millisecondsSinceEpoch.toString();
    var response = await Dio().get(networkImage,options: Options(responseType: ResponseType.bytes));
    final result = await ImageGallerySaver.saveImage(
      Uint8List.fromList(response.data),
      quality: 60,
      name: "catimg_$_curTime"
    );
    if(result['isSuccess']==true){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Saved Success!!"),duration: Duration(seconds: 3),));
    }
  }
}