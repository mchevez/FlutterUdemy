import 'package:flutter/material.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/themes/app_themes.dart';
void main() {


  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // home: const ListView2Screen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
      theme: AppThemes.lightTheme,
      
    );
  }
}