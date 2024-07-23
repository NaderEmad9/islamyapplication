import 'package:flutter/material.dart';

class ItemSurahDetails extends StatelessWidget {
  final content;
  final index;
  ItemSurahDetails({required this.content, required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      textDirection: TextDirection.rtl,
      '${content} (${index + 1}) ',
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
