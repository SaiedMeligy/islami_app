// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader {
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String, dynamic> ar = {
    "islami": "إسلامي",
    "quran": "القرأن",
    "hadeth": "الحديث",
    "tasbeh": "التسبيح",
    "radio": "الراديو",
    "settings": "الأعدادات",
    "language": "اللغة",
    "theme": "النمط"
  };
  static const Map<String, dynamic> en = {
    "islami": "Islami",
    "quran": "Quran",
    "hadeth": "Hadeth",
    "tasbeh": "Tasbeh",
    "radio": "Radio",
    "settings": "Settings",
    "language": "Language",
    "theme": "Theme"
  };
  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en
  };
}
