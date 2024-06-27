
import 'package:flutter/material.dart';
import 'package:alno_ai/repository/local/appSharedPreferences.dart';

class ThemeViewModel with ChangeNotifier {
  final AppSharedPreferences _preferences = AppSharedPreferences();


  ThemeMode _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  bool _isLoading = false;

  bool get isLoading => _isLoading;

  setLoading(value) {
    _isLoading = value;
    notifyListeners();
  }

  void setTheme(ThemeMode themeMode){
    _preferences.setThemeMode(themeMode);
    _themeMode  = themeMode;
    notifyListeners();
  }
  Future<void> getTheme() async{
    _themeMode = await _preferences.getThemeMode();
    notifyListeners();
  }
}