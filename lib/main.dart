import 'package:chat_app/features/screen/splash.dart';
import 'package:chat_app/theme/provider/theme_provider.dart';
import 'package:chat_app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ThemeProvider())
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeContainer.light,
      darkTheme: ThemeContainer.dark,
      themeMode: context.watch<ThemeProvider>().theme,
      home: const Splash(),
    );
  }
}
