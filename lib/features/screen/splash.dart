//import 'package:chat_app/theme/widget/theme_switcher.dart';
import 'package:chat_app/core/constants/app_image.dart';
import 'package:chat_app/theme/widget/theme_switcher.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppImage.logo),
            Text(
              'Chatbox',
              style: TextStyle(
                fontSize: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
