import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import '../generated/locale_keys.g.dart';
class StateLoadingWidget extends StatelessWidget {
  const StateLoadingWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.cityLight,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 7),
              child: Text(LocaleKeys.pleasewait.tr(),style: TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),)),
            //CircularProgressIndicator()
            Image.asset("assets/images/Loading1.gif",width: MediaQuery.of(context).size.width*1/3,)
        ],)
      ),
    );
  }
}