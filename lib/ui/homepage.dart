import 'package:cat_fact/ui/splashPage.dart';
import 'package:cat_fact/widgets/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: AppTheme.mainTheme(),
      debugShowCheckedModeBanner: false,
      home: SplashPage()
    );
  }
}