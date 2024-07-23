import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapplication/Quran/surah_item_details.dart';
import 'package:islamyapplication/app_colors.dart';

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
    var args = ModalRoute.of(context)?.settings.arguments as SurahDetailsargs;
    if (verses.isEmpty) {
      loadFile(args.index);
    }
    return Stack(
      children: [
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
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: verses.isEmpty
              ? const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(22),
                  child: Card(
                    elevation: 3,
                    color: CupertinoColors.white,
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
                              color: AppColors.primaryLightColor,
                              height: 2,
                              thickness: 3,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.separated(
                              separatorBuilder: (context, index) =>
                                  const Divider(
                                color: AppColors.primaryLightColor,
                                thickness: 2,
                              ),
                              itemBuilder: (context, index) {
                                return ItemSurahDetails(
                                  index: index,
                                  content: verses[index],
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
    for (int i = 0; i < lines.length; i++) {
      ((lines[i]));
    }
    verses = lines.where((line) => line.trim().isNotEmpty).toList();
    setState(() {});
  }
}

class SurahDetailsargs {
  String name;
  int index;
  SurahDetailsargs({required this.name, required this.index});
}
