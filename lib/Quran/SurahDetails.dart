import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapplication/AppColors.dart';
import 'package:islamyapplication/Quran/SurahItemDetails.dart';

class SurahDetailsScreen extends StatefulWidget {
  static const routeName = "SurahDetails";

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
              ? Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
                  ),
                )
              : Padding(
                  padding: EdgeInsets.all(22),
                  child: Card(
                    color: CupertinoColors.white,
                    margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.020,
                      vertical: MediaQuery.of(context).size.height * 0.02,
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
                              thickness: 2,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: ListView.builder(
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
    verses = lines;
    setState(() {});
  }
}

class SurahDetailsargs {
  String name;
  int index;
  SurahDetailsargs({required this.name, required this.index});
}
