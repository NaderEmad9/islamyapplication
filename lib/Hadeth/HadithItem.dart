import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/HadethDetails.dart';
import 'package:islamyapplication/Hadeth/HadethScreen.dart';

class ItemHadithName extends StatelessWidget {
  final Hadith hadith;

  ItemHadithName({required this.hadith});

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
