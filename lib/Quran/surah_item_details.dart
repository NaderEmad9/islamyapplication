import 'package:flutter/material.dart';
<<<<<<< HEAD

class ItemSurahDetails extends StatelessWidget {
  final String content;
  final int index;
  const ItemSurahDetails(
      {super.key, required this.content, required this.index});
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      textDirection: TextDirection.rtl,
      '$content (${index + 1}) ',
      style: Theme.of(context).textTheme.displaySmall,
=======
import 'package:islamyapplication/Quran/ayat_numbers_widget.dart';

class ItemSurahDetails extends StatelessWidget {
  final int index;
  final String content;
  final int verseNumber;

  const ItemSurahDetails({
    super.key,
    required this.index,
    required this.content,
    required this.verseNumber,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.rtl,
      text: TextSpan(
        children: [
          TextSpan(
            text: content,
            style:
                Theme.of(context).textTheme.displaySmall!.copyWith(height: 1.8),
          ),
          WidgetSpan(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: AyahSymbol(verseNumber: verseNumber),
            ),
          ),
        ],
      ),
>>>>>>> Development
    );
  }
}
