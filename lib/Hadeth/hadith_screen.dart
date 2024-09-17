import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapplication/Hadeth/hadith_item.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:translator/translator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:flutter/foundation.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<Hadith> hadithList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadHadithFile();
  }

  @override
  Widget build(BuildContext context) {
    final dividerColors = DividerTheme.of(context).color;
    final locale = Localizations.localeOf(context).languageCode;

    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/HadethLogo.png')),
          Divider(color: dividerColors, thickness: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  AppLocalizations.of(context)!.hadith,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          Divider(color: dividerColors, thickness: 3),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: isLoading
                  ? Center(
                      child: CircularProgressIndicator(
                        color: dividerColors,
                      ),
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        color: dividerColors,
                        thickness: 2,
                      ),
                      itemCount: hadithList.length,
                      itemBuilder: (context, index) {
                        return ItemHadithName(
                          hadith: hadithList[index],
                          title: locale == 'en'
                              ? hadithList[index].translatedTitle ??
                                  hadithList[index].title
                              : hadithList[index].title,
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> loadHadithFile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? cachedHadiths = prefs.getString('cachedHadiths');

    if (cachedHadiths != null) {
      List<dynamic> jsonList = jsonDecode(cachedHadiths);
      hadithList = jsonList.map((json) => Hadith.fromJson(json)).toList();
      setState(() {
        isLoading = false;
      });
    } else {
      String hadithContent =
          await rootBundle.loadString('assets/files/ahadeth.txt');
      List<String> rawHadithList = hadithContent.split(RegExp(r'#\s*'));

      List<Hadith> processedHadithList = [];
      for (String rawHadith in rawHadithList) {
        List<String> hadithLines = rawHadith.trim().split('\n');
        if (hadithLines.isNotEmpty) {
          String title = hadithLines[0];
          hadithLines.removeAt(0);
          Hadith hadith = Hadith(title: title, content: hadithLines);
          processedHadithList.add(hadith);
        }
      }

      final locale = Localizations.localeOf(context).languageCode;
      if (locale == 'en') {
        processedHadithList =
            await compute(translateHadiths, processedHadithList);
      }

      setState(() {
        hadithList = processedHadithList;
        isLoading = false;
      });

      String jsonString =
          jsonEncode(hadithList.map((hadith) => hadith.toJson()).toList());
      await prefs.setString('cachedHadiths', jsonString);
    }
  }

  Future<List<Hadith>> translateHadiths(List<Hadith> hadithList) async {
    final translator = GoogleTranslator();
    for (Hadith hadith in hadithList) {
      hadith.translatedTitle = await translator
          .translate(hadith.title, from: 'ar', to: 'en')
          .then((t) => t.text);
      for (int i = 0; i < hadith.content.length; i++) {
        hadith.translatedContent.add(await translator
            .translate(hadith.content[i], from: 'ar', to: 'en')
            .then((t) => t.text));
      }
    }
    return hadithList;
  }
}

class Hadith {
  final String title;
  final List<String> content;
  String? translatedTitle;
  List<String> translatedContent = [];

  Hadith({required this.title, required this.content});

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
      'translatedTitle': translatedTitle,
      'translatedContent': translatedContent,
    };
  }

  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      title: json['title'],
      content: List<String>.from(json['content']),
    )
      ..translatedTitle = json['translatedTitle']
      ..translatedContent = List<String>.from(json['translatedContent']);
  }
}
