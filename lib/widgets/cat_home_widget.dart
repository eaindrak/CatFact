import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_painter_widget.dart';

class CatHomeWidget extends StatefulWidget {
  final String questionText;final String img;final Widget nextWidget;
  const CatHomeWidget({ Key? key,required this.questionText,required this.img,required this.nextWidget }) : super(key: key);

  @override
  _CatHomeWidgetState createState() => _CatHomeWidgetState();
}

class _CatHomeWidgetState extends State<CatHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child:CustomPaint(
        size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height,),
        painter: CurvePainter(),
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height*1.5/4,
            width: MediaQuery.of(context).size.width,
            child: SvgPicture.asset(widget.img,semanticsLabel: "Home IMage",fit: BoxFit.fitHeight,),
          ),
          Expanded(child: Column(children: [
            Container(height: MediaQuery.of(context).size.height*1/8,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text("Hey Hooman!!!",style: TextStyles.extraLargeText.copyWith()),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(widget.questionText),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: widget.nextWidget,
            )
          ],))
        ],),
      ),
    );
  }
}