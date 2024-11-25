// ignore_for_file: unused_import

import 'package:bingo/themes/theme.dart';
import 'package:bingo/views/Loging.dart';
import 'package:bingo/views/Recovery.dart';
import 'package:bingo/views/Register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PIXEL BINGO',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: '/',
      routes: {
        '/': (context) => const Login(),
        '/register': (context) => const Register(),
        '/recovery': (context) => const Recovery(),
      },
    );
  }
}
