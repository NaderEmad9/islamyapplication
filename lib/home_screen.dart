import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/hadith_screen.dart';
import 'package:islamyapplication/Quran/quran_screen.dart';
import 'package:islamyapplication/Radio/radio_screen.dart';
import 'package:islamyapplication/Sebha/sebha_screen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    const QuranScreen(),
    const HadithScreen(),
    const SebhaScreen(),
    const RadioScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/LightBackground.png',
            width: double.infinity, height: double.infinity, fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islamy',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).primaryColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/QuranIcon.png'),
                    size: 30,
                  ),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/HadethIcon.png'),
                    size: 30,
                  ),
                  label: 'Hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/SebhaIcon.png'),
                    size: 30,
                  ),
                  label: 'Sebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                      'assets/images/RadioIcon.png',
                    ),
                    size: 30,
                  ),
                  label: 'Radio',
                ),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }
}
