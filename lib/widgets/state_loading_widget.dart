import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';

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
              child: Text("Please Wait",style: TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),)),
            CircularProgressIndicator()
        ],)
      ),
    );
  }
}