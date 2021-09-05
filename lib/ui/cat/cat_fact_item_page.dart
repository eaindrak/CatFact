import 'package:cat_fact/widgets/cat_fact_widget.dart';
import 'package:flutter/material.dart';

class CatFactItemPage extends StatelessWidget {
  final String imageName;final String factName;
  const CatFactItemPage({ Key? key,required this.imageName,required this.factName }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CatFactWithImageWidget(
      imageName: imageName,
      factDes: factName,
      btnWidget: SizedBox(width: 1,height: 1,),
    );
  }
}