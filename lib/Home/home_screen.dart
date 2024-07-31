import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/hadith_screen.dart';
import 'package:islamyapplication/Quran/quran_screen.dart';
import 'package:islamyapplication/Radio/radio_screen.dart';
import 'package:islamyapplication/Sebha/sebha_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamyapplication/Settings/settings_screen.dart';
import 'package:islamyapplication/providers/app_theme_provider.dart';
import 'package:provider/provider.dart';

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
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var themeProvider = Provider.of<ThemeProvider>(context);
    return Stack(
      children: [
        themeProvider.isDarkTheme()
            ? Image.asset('assets/images/DarkBackground.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover)
            : Image.asset('assets/images/LightBackground.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.app_title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(fontFamily: 'Amiri'),
                  ),
                ),
              ],
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
                  icon: const ImageIcon(
                    AssetImage('assets/images/QuranIcon.png'),
                    size: 30,
                  ),
                  label: AppLocalizations.of(context)!.quran,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/HadethIcon.png'),
                    size: 30,
                  ),
                  label: AppLocalizations.of(context)!.hadith,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage('assets/images/SebhaIcon.png'),
                    size: 30,
                  ),
                  label: AppLocalizations.of(context)!.sebha,
                ),
                BottomNavigationBarItem(
                  icon: const ImageIcon(
                    AssetImage(
                      'assets/images/RadioIcon.png',
                    ),
                    size: 30,
                  ),
                  label: AppLocalizations.of(context)!.radio,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(
                    CupertinoIcons.settings,
                    size: 30,
                  ),
                  label: AppLocalizations.of(context)!.settings,
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
