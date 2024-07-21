import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islamyapplication/Hadeth/HadethScreen.dart';
import 'package:islamyapplication/Quran/QuranScreen.dart';
import 'package:islamyapplication/Radio/RadioScreen.dart';
import 'package:islamyapplication/Sebha/SebhaScreen.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

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
              items: [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/QuranIcon.png'),
                  ),
                  label: 'Quran',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/HadethIcon.png'),
                  ),
                  label: 'Hadeth',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/SebhaIcon.png'),
                  ),
                  label: 'Sebha',
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/RadioIcon.png'),
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

  List<Widget> tabs = [
    HadethScreen(),
    QuranScreen(),
    SebhaScreen(),
    RadioScreen(),
  ];
}
