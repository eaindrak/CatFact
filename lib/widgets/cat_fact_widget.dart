import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/ui/cat/cat_saveto_gallery.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';

class CatFactWithImageWidget extends StatelessWidget {
  final String imageName;final String factDes;final Widget btnWidget;
  const CatFactWithImageWidget({Key? key,required this.imageName,required this.factDes,required this.btnWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.cityLight,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Hey Hooman!!!",
          style:
              TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.image,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SaveCatToGalleryPage(
                            networkImage: imageName,
                          )));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.ten_mp,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.share,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 1 / 3,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: ColorConst.exodusFruit,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          factDes,
                          style: TextStyles.largeText
                              .copyWith(color: ColorConst.cityLight),
                          textAlign: TextAlign.center,
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        btnWidget
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: AppBar().preferredSize.height * 1 / 7,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1 / 2.5,
              child: CachedNetworkImage(
                imageUrl: imageName,
                fit: BoxFit.contain,
                placeholder: (context, url) => Container(width: 50,height: 50,child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Image.asset("assets/images/cat_img.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
