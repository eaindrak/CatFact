import 'package:cat_fact/const/colorConst.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData ligthTheme(){
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConst.exodusFruit,
      accentColor: ColorConst.prunus
    );
  }

  static ThemeData darkTheme(){
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: ColorConst.ligthGreenishBlue,
      accentColor: ColorConst.sourLemon
    );
  }
}