import 'package:flutter/material.dart';
import 'package:islamyapplication/Quran/SurahDetails.dart';

class ItemSurahAssist extends StatefulWidget {
  final String name;
  final int index;

  ItemSurahAssist({required this.name, required this.index});

  @override
  State<ItemSurahAssist> createState() => _ItemSurahAssistState();
}

class _ItemSurahAssistState extends State<ItemSurahAssist> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(SurahDetailsScreen.routeName,
            arguments:
                SurahDetailsargs(name: widget.name, index: widget.index));
      },
      child: Text(
        widget.name,
        style: Theme.of(context).textTheme.displaySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
