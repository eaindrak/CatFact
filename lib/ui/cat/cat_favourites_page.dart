import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';

class CatFavPage extends StatelessWidget {
  const CatFavPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Center(child: Text("Favorites"),),
    );
  }
}