import 'package:flutter/material.dart';
import 'package:theme_manager/config.dart';
import 'package:theme_manager/home.dart';
import 'package:theme_manager/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    currentAppTheme.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Theme Manager',
      debugShowCheckedModeBanner: false,
      theme     : AppTheme.lightThemeData,
      darkTheme : AppTheme.darkThemeData,
      themeMode : currentAppTheme.currentThemeMode,
      home: HomePage(),
    );
  }
}
