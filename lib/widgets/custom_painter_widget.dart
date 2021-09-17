import 'package:cat_fact/const/colorConst.dart';
import 'package:flutter/material.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = ColorConst.cityLight;
    paint.style = PaintingStyle.fill; 

    var path = Path();
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width/2 , size.height/4 , size.width, size.height * 0.5 );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class LanguageCurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = ColorConst.exodusFruit;
    paint.style = PaintingStyle.fill; 

    var path = Path();
    path.moveTo(0, size.height/2);
    path.quadraticBezierTo(size.width/2 , size.height , size.width, size.height/2 );
    path.lineTo(size.width,0);
    path.lineTo(0, 0);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}