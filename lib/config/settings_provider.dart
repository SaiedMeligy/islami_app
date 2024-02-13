import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  String current_language = "en";
  ThemeMode current_theme = ThemeMode.light;

  changeLanguage(String newLanguage) {
    if (current_language == newLanguage) return;
    current_language = newLanguage;
    notifyListeners(); //to change value in the list of subscribe
  }

  changeTheme(ThemeMode newTheme) {
    if (current_theme == newTheme) return;
    current_theme = newTheme;
    notifyListeners();
  }

  String getBackground() {
    return current_theme == ThemeMode.light
        ? "assets/images/main.bg.png"
        : "assets/images/main_dark.png";
  }

  bool isDark() {
    return current_theme == ThemeMode.dark;
  }
}
