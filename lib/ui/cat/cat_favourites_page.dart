import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import '../../generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

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
          LocaleKeys.heyhooman.tr(),
          style:
              TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),
        ),
      ),
      body: Center(child: Text("Favorites"),),
    );
  }
}