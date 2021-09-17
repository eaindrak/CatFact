import 'package:cat_fact/const/colorConst.dart';
import 'package:flutter/material.dart';

class ArrowBtn extends StatelessWidget {
  const ArrowBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: CircleAvatar(radius: 30,backgroundColor: ColorConst.dracularOrchid,
        child: Icon(Icons.arrow_forward_ios,color: ColorConst.cityLight,size: 17,),
      ),
    );
  }
}

class DotBtn extends StatelessWidget {
  const DotBtn({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 8,
      height: 8,
      decoration: BoxDecoration(shape: BoxShape.circle,color: ColorConst.dracularOrchid),
    );
  }
}