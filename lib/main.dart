import 'package:flutter/material.dart';
import 'package:flutter_chat_addis/pages/home.dart';
import 'package:flutter_chat_addis/pages/login.dart';
import 'package:flutter_chat_addis/pages/main_page.dart';
import 'package:flutter_chat_addis/styles/appColors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            // home: const LoginPage(),
            initialRoute: '/main',
            routes: {
              '/': (context) => const LoginPage(),
              '/main': (context) => const MainPage(),
              '/home': (context) => Home()
            },
            theme: ThemeData(
              fontFamily: 'Urbanist',
              scaffoldBackgroundColor: AppColors.background,
              brightness: Brightness.dark
            ),
          );
  }
}