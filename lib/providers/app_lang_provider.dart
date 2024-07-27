import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  static const String languageKey = 'appLanguage';
  String _appLanguage;

  LanguageProvider() : _appLanguage = 'en' {
    _loadLanguage();
  }

  String get appLanguage => _appLanguage;

  bool isEnglish() {
    return _appLanguage == 'en';
  }

  void setLanguage(String languageCode) {
    _appLanguage = languageCode;
    _saveLanguage(languageCode);
    notifyListeners();
  }

  void _loadLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final languageCode = prefs.getString(languageKey) ?? 'en';
    _appLanguage = languageCode;
    notifyListeners();
  }

  void _saveLanguage(String languageCode) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(languageKey, languageCode);
  }
}
