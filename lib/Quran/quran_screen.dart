import 'package:flutter/material.dart';
import 'package:islamyapplication/Quran/surah_details.dart';
<<<<<<< HEAD
import 'package:islamyapplication/app_colors.dart';
=======
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
>>>>>>> Development

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen> {
  List<Map<String, dynamic>> surahList = [
    {"name": "Al-Fatiha", "verseCount": 7},
    {"name": "Al-Baqarah", "verseCount": 286},
    {"name": "Aal-E-Imran", "verseCount": 200},
    {"name": "An-Nisa", "verseCount": 176},
    {"name": "Al-Maidah", "verseCount": 120},
    {"name": "Al-Anam", "verseCount": 165},
    {"name": "Al-Araf", "verseCount": 206},
    {"name": "Al-Anfal", "verseCount": 75},
    {"name": "At-Tawbah", "verseCount": 129},
    {"name": "Yunus", "verseCount": 109},
    {"name": "Hud", "verseCount": 123},
    {"name": "Yusuf", "verseCount": 111},
    {"name": "Ar-Rad", "verseCount": 43},
    {"name": "Ibrahim", "verseCount": 52},
    {"name": "Al-Hijr", "verseCount": 99},
    {"name": "An-Nahl", "verseCount": 128},
    {"name": "Al-Isra", "verseCount": 111},
    {"name": "Al-Kahf", "verseCount": 110},
    {"name": "Maryam", "verseCount": 98},
    {"name": "Taha", "verseCount": 135},
    {"name": "Al-Anbiya", "verseCount": 112},
    {"name": "Al-Hajj", "verseCount": 78},
    {"name": "Al-Muminun", "verseCount": 118},
    {"name": "An-Nur", "verseCount": 64},
    {"name": "Al-Furqan", "verseCount": 77},
    {"name": "Ash-Shuara", "verseCount": 227},
    {"name": "An-Naml", "verseCount": 93},
    {"name": "Al-Qasas", "verseCount": 88},
    {"name": "Al-Ankabut", "verseCount": 69},
    {"name": "Ar-Rum", "verseCount": 60},
    {"name": "Luqman", "verseCount": 34},
    {"name": "As-Sajda", "verseCount": 30},
    {"name": "Al-Ahzab", "verseCount": 73},
    {"name": "Saba", "verseCount": 54},
    {"name": "Fatir", "verseCount": 45},
    {"name": "Ya-Sin", "verseCount": 83},
    {"name": "As-Saffat", "verseCount": 182},
    {"name": "Sad", "verseCount": 88},
    {"name": "Az-Zumar", "verseCount": 75},
    {"name": "Ghafir", "verseCount": 85},
    {"name": "Fussilat", "verseCount": 54},
    {"name": "Ash-Shura", "verseCount": 53},
    {"name": "Az-Zukhruf", "verseCount": 89},
    {"name": "Ad-Dukhan", "verseCount": 59},
    {"name": "Al-Jathiya", "verseCount": 37},
    {"name": "Al-Ahqaf", "verseCount": 35},
    {"name": "Muhammad", "verseCount": 38},
    {"name": "Al-Fath", "verseCount": 29},
    {"name": "Al-Hujraat", "verseCount": 18},
    {"name": "Qaf", "verseCount": 45},
    {"name": "Adh-Dhariyat", "verseCount": 60},
    {"name": "At-Tur", "verseCount": 49},
    {"name": "An-Najm", "verseCount": 62},
    {"name": "Al-Qamar", "verseCount": 55},
    {"name": "Ar-Rahman", "verseCount": 78},
    {"name": "Al-Waqia", "verseCount": 96},
    {"name": "Al-Hadid", "verseCount": 29},
    {"name": "Al-Mujadila", "verseCount": 22},
    {"name": "Al-Hashr", "verseCount": 24},
    {"name": "Al-Mumtahina", "verseCount": 13},
    {"name": "As-Saff", "verseCount": 14},
    {"name": "Al-Jumua", "verseCount": 11},
    {"name": "Al-Munafiqun", "verseCount": 11},
    {"name": "At-Taghabun", "verseCount": 18},
    {"name": "At-Talaq", "verseCount": 12},
    {"name": "At-Tahrim", "verseCount": 12},
    {"name": "Al-Mulk", "verseCount": 30},
    {"name": "Al-Qalam", "verseCount": 52},
    {"name": "Al-Haaqqa", "verseCount": 52},
    {"name": "Al-Maarij", "verseCount": 44},
    {"name": "Nuh", "verseCount": 28},
    {"name": "Al-Jinn", "verseCount": 28},
    {"name": "Al-Muzzammil", "verseCount": 20},
    {"name": "Al-Muddaththir", "verseCount": 56},
    {"name": "Al-Qiyama", "verseCount": 40},
    {"name": "Al-Insan", "verseCount": 31},
    {"name": "Al-Mursalat", "verseCount": 50},
    {"name": "An-Naba", "verseCount": 40},
    {"name": "An-Naziat", "verseCount": 46},
    {"name": "Abasa", "verseCount": 42},
    {"name": "At-Takwir", "verseCount": 29},
    {"name": "Al-Infitar", "verseCount": 19},
    {"name": "Al-Mutaffifin", "verseCount": 36},
    {"name": "Al-Inshiqaq", "verseCount": 25},
    {"name": "Al-Burooj", "verseCount": 22},
    {"name": "At-Tariq", "verseCount": 17},
    {"name": "Al-Ala", "verseCount": 19},
    {"name": "Al-Ghashiya", "verseCount": 26},
    {"name": "Al-Fajr", "verseCount": 30},
    {"name": "Al-Balad", "verseCount": 20},
    {"name": "Ash-Shams", "verseCount": 15},
    {"name": "Al-Lail", "verseCount": 21},
    {"name": "Ad-Duhaa", "verseCount": 11},
    {"name": "Ash-Sharh", "verseCount": 8},
    {"name": "At-Tin", "verseCount": 8},
    {"name": "Al-Alaq", "verseCount": 19},
    {"name": "Al-Qadr", "verseCount": 5},
    {"name": "Al-Bayyina", "verseCount": 8},
    {"name": "Az-Zalzala", "verseCount": 8},
    {"name": "Al-Adiyat", "verseCount": 11},
    {"name": "Al-Qaria", "verseCount": 11},
    {"name": "At-Takathur", "verseCount": 8},
    {"name": "Al-Asr", "verseCount": 3},
    {"name": "Al-Humaza", "verseCount": 9},
    {"name": "Al-Fil", "verseCount": 5},
    {"name": "Quraish", "verseCount": 4},
    {"name": "Al-Maun", "verseCount": 7},
    {"name": "Al-Kawthar", "verseCount": 3},
    {"name": "Al-Kafiroon", "verseCount": 6},
    {"name": "An-Nasr", "verseCount": 3},
    {"name": "Al-Masad", "verseCount": 5},
    {"name": "Al-Ikhlas", "verseCount": 4},
    {"name": "Al-Falaq", "verseCount": 5},
    {"name": "An-Nas", "verseCount": 6}
  ];

  @override
  Widget build(BuildContext context) {
    final dividerColors = DividerTheme.of(context).color;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image.asset('assets/images/QuranLogo.png'),
          ),
<<<<<<< HEAD
          const Divider(
            color: AppColors.primaryLightColor,
=======
          Divider(
            color: dividerColors,
>>>>>>> Development
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  AppLocalizations.of(context)!.surah_title,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              Container(
                width: 3,
                color: dividerColors,
                height: 40,
              ),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  AppLocalizations.of(context)!.ayat,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
<<<<<<< HEAD
          const Divider(
            color: AppColors.primaryLightColor,
=======
          Divider(
            color: dividerColors,
>>>>>>> Development
            thickness: 3,
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SurahDetailsScreen.routeName,
                        arguments: SurahDetailsargs(
                            name: surahList[index]['name'], index: index),
                      );
                    },
                    child: SurahListItem(
                      name: surahList[index]['name'],
                      verseCount: surahList[index]['verseCount'],
                    ),
                  );
                },
                itemCount: surahList.length,
                separatorBuilder: (context, index) {
<<<<<<< HEAD
                  return const Divider(
                    color: AppColors.primaryLightColor,
=======
                  return Divider(
                    color: dividerColors,
>>>>>>> Development
                    thickness: 2,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SurahListItem extends StatelessWidget {
  final String name;
  final int verseCount;

  const SurahListItem(
      {super.key, required this.name, required this.verseCount});

  @override
  Widget build(BuildContext context) {
    final dividerColors = DividerTheme.of(context).color;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            name,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        Container(
          width: 2,
          color: dividerColors,
          height: 40,
        ),
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            verseCount.toString(),
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ],
    );
  }
}
