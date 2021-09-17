import 'package:cat_fact/ui/splashPage.dart';
import 'package:cat_fact/widgets/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: AppTheme.mainTheme(),
      debugShowCheckedModeBanner: false,
      home: SplashPage()
    );
  }
}