import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  static const String themeKey = 'themeMode';
  ThemeMode _themeMode;

  ThemeProvider()
      : _themeMode =
            WidgetsBinding.instance.platformDispatcher.platformBrightness ==
                    Brightness.dark
                ? ThemeMode.dark
                : ThemeMode.light {
    _loadThemeMode();
  }

  ThemeMode get themeMode => _themeMode;

  bool isDarkTheme() {
    return _themeMode == ThemeMode.dark;
  }

  void toggleTheme(ThemeMode themeMode) {
    _themeMode = themeMode;
    _saveThemeMode(themeMode);
    notifyListeners();
  }

  void _loadThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeString = prefs.getString(themeKey);

    if (themeString != null) {
      _themeMode =
          ThemeMode.values.firstWhere((mode) => mode.toString() == themeString);
    } else {
      _themeMode =
          WidgetsBinding.instance.platformDispatcher.platformBrightness ==
                  Brightness.dark
              ? ThemeMode.dark
              : ThemeMode.light;
    }

    notifyListeners();
  }

  void _saveThemeMode(ThemeMode themeMode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(themeKey, themeMode.toString());
  }
}
