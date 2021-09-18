import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

showBreedInfoModal(BuildContext context,CatBreed catBreed,String svgName,Widget searchBtn,Widget translateBtn){

  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context, 
    builder: (context){
      return GestureDetector(
        onTap: ()=>Navigator.pop(context),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 70,
                  color: Colors.transparent,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5,vertical: 7),
                  color: Colors.white,
                  child: Column(mainAxisSize: MainAxisSize.min,children: [
                    Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(catBreed.breed,style: TextStyles.extraLargeText.copyWith(),)),
                    catBreed.country!=""?Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        title: Text(LocaleKeys.country.tr(),style: TextStyles.smallText),
                        subtitle: Text(catBreed.country,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    catBreed.origin!=""?Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        title: Text(LocaleKeys.origin.tr(),style: TextStyles.smallText),
                        subtitle: Text(catBreed.origin,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    catBreed.coat!=""?Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        title: Text(LocaleKeys.coat.tr(),style: TextStyles.smallText),
                        subtitle: Text(catBreed.coat,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    catBreed.pattern!=""?Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        title: Text(LocaleKeys.pattern.tr(),style: TextStyles.smallText),
                        subtitle: Text(catBreed.pattern,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width,
                      child: context.locale.languageCode!="en"?
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          translateBtn,searchBtn
                        ],
                      ):
                      Center(
                        child: searchBtn,
                      ),
                    )
                  ],),
                ),
              ],
            ),
            Positioned(
              top:0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: SvgPicture.asset(
                  svgName,
                  semanticsLabel: 'Cat Image',
                ),
              ),
            ),
          ],
        ),
      );
    }
  );
}