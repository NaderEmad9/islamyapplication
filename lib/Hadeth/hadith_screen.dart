import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:islamyapplication/Hadeth/hadith_item.dart';
import 'package:islamyapplication/app_colors.dart';

class HadithScreen extends StatefulWidget {
  const HadithScreen({super.key});

  @override
  State<HadithScreen> createState() => _HadithScreenState();
}

class _HadithScreenState extends State<HadithScreen> {
  List<Hadith> hadithList = [];

  @override
  void initState() {
    super.initState();
    loadHadithFile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/HadethLogo.png')),
          const Divider(color: AppColors.primaryLightColor, thickness: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "Hadith",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          const Divider(color: AppColors.primaryLightColor, thickness: 3),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: hadithList.isEmpty
                  ? const Center(
                      child: CircularProgressIndicator(
                        color: AppColors.primaryLightColor,
                      ),
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) => const Divider(
                        color: AppColors.primaryLightColor,
                        thickness: 2,
                      ),
                      itemCount: hadithList.length,
                      itemBuilder: (context, index) {
                        return ItemHadithName(
                          hadith: hadithList[index],
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void loadHadithFile() async {
    String hadithContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> rawHadithList = hadithContent.split('#\r\n');

    List<Hadith> processedHadithList = [];
    for (String rawHadith in rawHadithList) {
      List<String> hadithLines = rawHadith.split('\n');
      String title = hadithLines[0];
      hadithLines.removeAt(0);
      Hadith hadith = Hadith(title: title, content: hadithLines);
      processedHadithList.add(hadith);
    }

    setState(() {
      hadithList = processedHadithList;
    });
  }
}

class Hadith {
  final String title;
  final List<String> content;

  Hadith({required this.title, required this.content});
}