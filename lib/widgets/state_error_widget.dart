import 'package:cat_fact/const/colorConst.dart';
import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';

class StateErrorWidget extends StatelessWidget {
  final String error;
  const StateErrorWidget({ Key? key,required this.error }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
              child: Text(error,style: TextStyles.smallText.copyWith(color: ColorConst.dracularOrchid),)),
            Icon(Icons.error)
        ],)
      ),
    );
  }
}