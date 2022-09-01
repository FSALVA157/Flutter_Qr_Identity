import 'package:fl_identity/app_routes.dart';
import 'package:fl_identity/themes/global_theme.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Identity App',
      theme: GlobalTheme.lightTheme,
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (setting)=> AppRoutes.onGenerateRoute(setting),
    );
  }
}