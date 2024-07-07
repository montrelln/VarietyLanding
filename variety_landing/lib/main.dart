import 'package:flutter/material.dart';
import 'package:variety_landing/view/home.dart';
import 'package:variety_landing/view/policy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var title = "Variety";
    return MaterialApp(
      routes: {'/policy': (context) => const Policy()},
      title: title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.white,
        scrollbarTheme: const ScrollbarThemeData(interactive: false),
        brightness: Brightness.light,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ThemeData().colorScheme.copyWith(primary: Colors.black),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
          ),
        ),
      ),
      home: Home(title: title),
    );
  }
}
