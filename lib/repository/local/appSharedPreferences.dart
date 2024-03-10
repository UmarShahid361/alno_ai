import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSharedPreferences{
  Future<ThemeMode> getThemeMode() async  {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String theme = preferences.getString("themeMode") ?? "system";
    // print(theme);
    if(theme == "system"){
      return ThemeMode.system;
    }

    if(theme == "light"){
      return ThemeMode.light;
    }

    return ThemeMode.dark;
  }

  void setThemeMode(ThemeMode themeMode) async  {
    String theme = "";
    if(themeMode == ThemeMode.system){
      theme = "system";
    } else if(themeMode == ThemeMode.light){
      theme = "light";
    } else{
      theme = "dark";
    }
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString("themeMode", theme);
  }

}