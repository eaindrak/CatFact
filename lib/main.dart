import 'package:cat_fact/ui/homepage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await EasyLocalization.ensureInitialized();
  runApp(ProviderScope(
    child: EasyLocalization(
      supportedLocales: [Locale('en', ''), Locale('my', ''), Locale('es', '')],
      path: 'assets/translations', 
      fallbackLocale: Locale('en', ''),
      child: HomePage()
    )
  ));
}