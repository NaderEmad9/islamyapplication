import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/HadethDetails.dart';
import 'package:islamyapplication/HomeScreen.dart';
import 'package:islamyapplication/Quran/SurahDetails.dart';
import 'package:islamyapplication/ThemeData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SurahDetailsScreen.routeName: (context) => SurahDetailsScreen(),
        HadithDetailsScreen.routeName: (context) => HadithDetailsScreen(),
      },
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
    );
  }
}
