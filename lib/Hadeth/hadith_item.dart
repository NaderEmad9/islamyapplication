import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/hadith_details.dart';
import 'package:islamyapplication/Hadeth/hadith_screen.dart';

class ItemHadithName extends StatelessWidget {
  final Hadith hadith;

  const ItemHadithName({super.key, required this.hadith});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .pushNamed(HadithDetailsScreen.routeName, arguments: hadith);
      },
      child: Text(
        hadith.title,
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
