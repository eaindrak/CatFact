import 'package:cat_fact/widgets/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_painter_widget.dart';

class CatHomeWidget extends StatefulWidget {
  final Color bgColor;final String questionText;final String img;
  const CatHomeWidget({ Key? key,required this.bgColor,required this.questionText,required this.img }) : super(key: key);

  @override
  _CatHomeWidgetState createState() => _CatHomeWidgetState();
}

class _CatHomeWidgetState extends State<CatHomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.bgColor,
      appBar: AppBar(
        backgroundColor: widget.bgColor,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: SvgPicture.asset(
              "assets/images/heart.svg",
              semanticsLabel: 'Heart Image',
            ),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        child:CustomPaint(
          size: Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height,),
          painter: CurvePainter(),
          child: Column(children: [
            Container(
              height: MediaQuery.of(context).size.height*1.3/4,
              child: SvgPicture.asset(widget.img,semanticsLabel: "Home IMage",),
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
              )
            ],))
          ],),
        ),
      ),
    );
  }
}