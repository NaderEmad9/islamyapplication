import 'package:flutter/material.dart';
import 'package:islamyapplication/HomeScreen.dart';
import 'package:islamyapplication/ThemeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Add the parameter here

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
      },
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
    );
  }
}
