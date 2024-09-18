import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class ThemeProvider extends ChangeNotifier {
  final FlutterSecureStorage storage =
      const FlutterSecureStorage();

  ThemeMode theme = ThemeMode.system;

  ThemeProvider() {
    getThemeMode();
  }

  getThemeMode() async {
    var theme = await storage.read(key: 'theme');
    if (theme == "dark") {
      this.theme = ThemeMode.dark;
      notifyListeners();
    } else if (theme == "light") {
      this.theme = ThemeMode.light;
      notifyListeners();
    }
  }

  setTheme(bool isDark) async {
    if (isDark) {
      await storage.write(key: 'theme', value: 'dark');
      this.theme = ThemeMode.dark;
      notifyListeners();
    } else {
      await storage.write(key: "theme", value: 'light');
      this.theme = ThemeMode.light;
      notifyListeners();
    }
  }
}
