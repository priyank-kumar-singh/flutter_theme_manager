import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppTheme with ChangeNotifier {
  static ThemeMode _currentThemeMode = ThemeMode.system;
  static bool _isDark = SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

  static ThemeData get lightThemeData => ThemeData.light().copyWith(
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.yellow.shade700,
      minWidth: 200.0,
    ),
    primaryColor: Colors.yellow.shade800,
  );

  static ThemeData get darkThemeData => ThemeData.dark().copyWith(
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.teal.shade700,
      minWidth: 200.0,
    ),
    primaryColor: Colors.teal.shade800,
  );

  ThemeMode get currentThemeMode => _currentThemeMode;

  void useLightThemeMode() {
    _currentThemeMode = ThemeMode.light;
    _isDark = false;
    notifyListeners();
  }

  void useDarkThemeMode() {
    _currentThemeMode = ThemeMode.dark;
    _isDark = true;
    notifyListeners();
  }

  void useSystemThemeMode() {
    _currentThemeMode = ThemeMode.system;
    _isDark = SchedulerBinding.instance.window.platformBrightness == Brightness.dark;
    notifyListeners();
  }

  void switchThemeMode() {
    _isDark = !_isDark;
    _currentThemeMode = _isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
