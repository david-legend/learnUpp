import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:learnupp/routes/router.gr.dart';
import 'package:learnupp/values/values.dart';

import 'app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConst.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightThemeData,
      home: Container(),
      builder: ExtendedNavigator<Router>(
        router: Router(),
        initialRoute: Routes.homeScreen,
      ),
    );
  }
}
