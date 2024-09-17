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
  List<Map<String, dynamic>> surahList = List.generate(114, (index) {
    return {"index": index + 1, "verseCount": _getVerseCount(index + 1)};
  });

  static int _getVerseCount(int surahIndex) {
    // Add the actual verse counts for each Surah
    const verseCounts = [
      7,
      286,
      200,
      176,
      120,
      165,
      206,
      75,
      129,
      109,
      123,
      111,
      43,
      52,
      99,
      128,
      111,
      110,
      98,
      135,
      112,
      78,
      118,
      64,
      77,
      227,
      93,
      88,
      69,
      60,
      34,
      30,
      73,
      54,
      45,
      83,
      182,
      88,
      75,
      85,
      54,
      53,
      89,
      59,
      37,
      35,
      38,
      29,
      18,
      45,
      60,
      49,
      62,
      55,
      78,
      96,
      29,
      22,
      24,
      13,
      14,
      11,
      11,
      18,
      12,
      12,
      30,
      52,
      52,
      44,
      28,
      28,
      20,
      56,
      40,
      31,
      50,
      40,
      46,
      42,
      29,
      19,
      36,
      25,
      22,
      17,
      19,
      26,
      30,
      20,
      15,
      21,
      11,
      8,
      8,
      19,
      5,
      8,
      8,
      11,
      11,
      8,
      3,
      9,
      5,
      4,
      7,
      3,
      6,
      3,
      5,
      4,
      5,
      6
    ];
    return verseCounts[surahIndex - 1];
  }

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
                  final surahIndex = surahList[index]['index'] as int;
                  final surahName = _getSurahName(context, surahIndex);
                  final verseCount = surahList[index]['verseCount'] as int;

                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SurahDetailsScreen.routeName,
                        arguments: SurahDetailsargs(
                            name: surahName, index: surahIndex),
                      );
                    },
                    child: SurahListItem(
                      name: surahName,
                      verseCount: verseCount,
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

  String _getSurahName(BuildContext context, int surahIndex) {
    final localizations = AppLocalizations.of(context)!;
    final surahNames = [
      localizations.surah_1,
      localizations.surah_2,
      localizations.surah_3,
      localizations.surah_4,
      localizations.surah_5,
      localizations.surah_6,
      localizations.surah_7,
      localizations.surah_8,
      localizations.surah_9,
      localizations.surah_10,
      localizations.surah_11,
      localizations.surah_12,
      localizations.surah_13,
      localizations.surah_14,
      localizations.surah_15,
      localizations.surah_16,
      localizations.surah_17,
      localizations.surah_18,
      localizations.surah_19,
      localizations.surah_20,
      localizations.surah_21,
      localizations.surah_22,
      localizations.surah_23,
      localizations.surah_24,
      localizations.surah_25,
      localizations.surah_26,
      localizations.surah_27,
      localizations.surah_28,
      localizations.surah_29,
      localizations.surah_30,
      localizations.surah_31,
      localizations.surah_32,
      localizations.surah_33,
      localizations.surah_34,
      localizations.surah_35,
      localizations.surah_36,
      localizations.surah_37,
      localizations.surah_38,
      localizations.surah_39,
      localizations.surah_40,
      localizations.surah_41,
      localizations.surah_42,
      localizations.surah_43,
      localizations.surah_44,
      localizations.surah_45,
      localizations.surah_46,
      localizations.surah_47,
      localizations.surah_48,
      localizations.surah_49,
      localizations.surah_50,
      localizations.surah_51,
      localizations.surah_52,
      localizations.surah_53,
      localizations.surah_54,
      localizations.surah_55,
      localizations.surah_56,
      localizations.surah_57,
      localizations.surah_58,
      localizations.surah_59,
      localizations.surah_60,
      localizations.surah_61,
      localizations.surah_62,
      localizations.surah_63,
      localizations.surah_64,
      localizations.surah_65,
      localizations.surah_66,
      localizations.surah_67,
      localizations.surah_68,
      localizations.surah_69,
      localizations.surah_70,
      localizations.surah_71,
      localizations.surah_72,
      localizations.surah_73,
      localizations.surah_74,
      localizations.surah_75,
      localizations.surah_76,
      localizations.surah_77,
      localizations.surah_78,
      localizations.surah_79,
      localizations.surah_80,
      localizations.surah_81,
      localizations.surah_82,
      localizations.surah_83,
      localizations.surah_84,
      localizations.surah_85,
      localizations.surah_86,
      localizations.surah_87,
      localizations.surah_88,
      localizations.surah_89,
      localizations.surah_90,
      localizations.surah_91,
      localizations.surah_92,
      localizations.surah_93,
      localizations.surah_94,
      localizations.surah_95,
      localizations.surah_96,
      localizations.surah_97,
      localizations.surah_98,
      localizations.surah_99,
      localizations.surah_100,
      localizations.surah_101,
      localizations.surah_102,
      localizations.surah_103,
      localizations.surah_104,
      localizations.surah_105,
      localizations.surah_106,
      localizations.surah_107,
      localizations.surah_108,
      localizations.surah_109,
      localizations.surah_110,
      localizations.surah_111,
      localizations.surah_112,
      localizations.surah_113,
      localizations.surah_114,
    ];
    return surahNames[surahIndex - 1];
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
