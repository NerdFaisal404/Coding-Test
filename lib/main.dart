import 'package:coding_test/di/dependency_injection.dart';
import 'package:coding_test/ui/feature/home/home_screen.dart';
import 'package:coding_test/utils/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  setup();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcomHunt',
      theme:  AppThemes().lightTheme,
      home: HomeScreen(),
    );
  }
}

