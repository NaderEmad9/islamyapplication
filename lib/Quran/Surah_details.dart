<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapplication/Quran/surah_item_details.dart';
import 'package:islamyapplication/app_colors.dart';
=======
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapplication/Quran/surah_item_details.dart';
import 'package:islamyapplication/providers/app_theme_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
>>>>>>> Development

class SurahDetailsScreen extends StatefulWidget {
  static const routeName = "SurahDetails";

  const SurahDetailsScreen({super.key});

  @override
  State<SurahDetailsScreen> createState() => _SurahDetailsScreenState();
}

class _SurahDetailsScreenState extends State<SurahDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
=======
    var themeProvider = Provider.of<ThemeProvider>(context);
    final dividerColors = DividerTheme.of(context).color;
>>>>>>> Development
    var args = ModalRoute.of(context)?.settings.arguments as SurahDetailsargs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
<<<<<<< HEAD
        Image.asset(
          'assets/images/LightBackground.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islamy",
=======
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
            title: Text(
              AppLocalizations.of(context)!.app_title,
>>>>>>> Development
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: verses.isEmpty
<<<<<<< HEAD
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
=======
              ? Center(
                  child: CircularProgressIndicator(
                    color: dividerColors,
>>>>>>> Development
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(22),
                  child: Card(
                    elevation: 3,
<<<<<<< HEAD
                    color: CupertinoColors.white,
=======
                    color: CardTheme.of(context).color,
>>>>>>> Development
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.012,
                      vertical: MediaQuery.of(context).size.height * 0.050,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Text(
                              args.name,
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Center(
                            child: Divider(
                              indent: MediaQuery.of(context).size.width * 0.10,
                              endIndent:
                                  MediaQuery.of(context).size.width * 0.10,
<<<<<<< HEAD
                              color: AppColors.primaryLightColor,
=======
                              color: dividerColors,
>>>>>>> Development
                              height: 2,
                              thickness: 3,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
<<<<<<< HEAD
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                color: AppColors.primaryLightColor,
                                thickness: 2,
                              ),
                              itemBuilder: (context, index) {
                                return ItemSurahDetails(
                                  index: index,
                                  content: verses[index],
=======
                              separatorBuilder: (context, index) => Divider(
                                color: dividerColors,
                                thickness: 2,
                              ),
                              itemBuilder: (context, index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    if (index == 0 && args.index != 0) ...[
                                      Text(
                                        textAlign: TextAlign.center,
                                        "﷽",
                                        style: Theme.of(context)
                                            .textTheme
                                            .displaySmall,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Divider(
                                        color: dividerColors,
                                        thickness: 2,
                                      ),
                                    ],
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    ItemSurahDetails(
                                      index: index,
                                      content: verses[index],
                                      verseNumber: index + 1,
                                    ),
                                  ],
>>>>>>> Development
                                );
                              },
                              itemCount: verses.length,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
<<<<<<< HEAD
    for (int i = 0; i < lines.length; i++) {
      ((lines[i]));
    }
    verses = lines.where((line) => line.trim().isNotEmpty).toList();
=======

    if (index == 0 && lines.isNotEmpty) {
      lines.insert(
        0,
        "﷽",
      );
    }

    verses = lines
        .where((line) => line.trim().isNotEmpty)
        .map((line) => line.trim())
        .toList();
>>>>>>> Development
    setState(() {});
  }
}

class SurahDetailsargs {
  String name;
  int index;
  SurahDetailsargs({required this.name, required this.index});
}
