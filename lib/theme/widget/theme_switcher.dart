import 'package:chat_app/theme/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
        builder: (context, themeProvider, _) {
      return Container(
        child: Switch(
            value: themeProvider.theme == ThemeMode.dark,
            onChanged: themeProvider.setTheme),
      );
    });
  }
}
