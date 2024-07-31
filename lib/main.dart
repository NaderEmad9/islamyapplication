import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/hadith_details.dart';
<<<<<<< HEAD
import 'package:islamyapplication/home_screen.dart';
import 'package:islamyapplication/Quran/surah_details.dart';
import 'package:islamyapplication/theme_data.dart';

void main() {
  runApp(const MyApp());
=======
import 'package:islamyapplication/Home/home_screen.dart';
import 'package:islamyapplication/Quran/surah_details.dart';
import 'package:islamyapplication/providers/app_lang_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamyapplication/providers/app_theme_provider.dart';
import 'package:islamyapplication/ui/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LanguageProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const RestartWidget(
        child: MyApp(),
      ),
    ),
  );
>>>>>>> Development
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<LanguageProvider>(context);
    var themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.appLanguage),
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SurahDetailsScreen.routeName: (context) => const SurahDetailsScreen(),
        HadithDetailsScreen.routeName: (context) => const HadithDetailsScreen(),
      },
      themeMode: themeProvider.themeMode,
      theme: MyThemeData.lightMode,
      darkTheme: MyThemeData.darkMode,
    );
  }
}

class RestartWidget extends StatefulWidget {
  final Widget child;

  const RestartWidget({super.key, required this.child});

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<RestartWidgetState>()!.restartApp();
  }

  @override
  RestartWidgetState createState() => RestartWidgetState();
}

class RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
