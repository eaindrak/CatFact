import 'package:cat_fact/model/cat_breed.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

showBreedInfoModal(BuildContext context,CatBreed catBreed,String svgName){
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
                        title: Text("Country",style: TextStyles.smallText),
                        subtitle: Text(catBreed.country,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    catBreed.origin!=""?Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        title: Text("Origin",style: TextStyles.smallText),
                        subtitle: Text(catBreed.origin,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    catBreed.coat!=""?Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        title: Text("Coat",style: TextStyles.smallText),
                        subtitle: Text(catBreed.coat,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    catBreed.pattern!=""?Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: ListTile(
                        title: Text("Pattern",style: TextStyles.smallText),
                        subtitle: Text(catBreed.pattern,style: TextStyles.largeText),
                      ),
                    ):SizedBox(width: 1,height: 0,),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: ElevatedButton(
                          child: Text("Search on Google"),
                          onPressed: ()async{
                            var _url="https://www.google.com/search?q=${catBreed.breed} breed";
                            if (await canLaunch(_url)) {
                              await launch(_url, forceSafariVC: false);
                            } else {
                              throw 'Could not launch $_url';
                            }
                          },
                        ),
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