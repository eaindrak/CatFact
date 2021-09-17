import 'package:cat_fact/const/colorConst.dart';
import 'package:flutter/material.dart';

class AppTheme{
  static ThemeData mainTheme(){
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: ColorConst.exodusFruit,
      backgroundColor: ColorConst.cityLight,
      appBarTheme: AppBarTheme(
        backgroundColor: ColorConst.cityLight,
        titleTextStyle: TextStyle(color: ColorConst.dracularOrchid,fontSize: 13),
        elevation: 0,
        iconTheme:IconThemeData(size: 13,color: ColorConst.dracularOrchid) 
      )
    );
  }
}