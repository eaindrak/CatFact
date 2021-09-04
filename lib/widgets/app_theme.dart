import 'package:cat_fact/const/colorConst.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData ligthTheme(){
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConst.exodusFruit,
      accentColor: ColorConst.prunus,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConst.cityLight,
        titleTextStyle: TextStyle(color: ColorConst.dracularOrchid,fontSize: 13),
        elevation: 0,
        iconTheme:IconThemeData(size: 13,color: ColorConst.dracularOrchid) 
      )
    );
  }

  static ThemeData darkTheme(){
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: ColorConst.ligthGreenishBlue,
      accentColor: ColorConst.sourLemon,
      iconTheme: IconThemeData(size: 14)
    );
  }
}