import 'package:cat_fact/widgets/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'cat/cat_homepage.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      theme: AppTheme.ligthTheme(),
      debugShowCheckedModeBanner: false,
      home: CatHomePage()
    );
  }
}