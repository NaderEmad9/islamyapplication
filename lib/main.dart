import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/hadith_details.dart';
import 'package:islamyapplication/home_screen.dart';
import 'package:islamyapplication/Quran/surah_details.dart';
import 'package:islamyapplication/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SurahDetailsScreen.routeName: (context) => const SurahDetailsScreen(),
        HadithDetailsScreen.routeName: (context) => const HadithDetailsScreen(),
      },
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
    );
  }
}
