import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

class ThemeService {
  final _box = GetStorage();
  final _key = 'isDarkMode';

  _saveThemeToBox(bool isDarkMode){
    return _box.write(_key, isDarkMode);
  }

  bool _loadThemeFromBox() {
    return _box.read(_key) ?? false;
  }

  ThemeMode get theme {
    return _loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    Get.changeThemeMode(_loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    _saveThemeToBox(!_loadThemeFromBox());
  }
}
