import 'package:flutter/material.dart';
import 'package:islamyapplication/ui/app_colors.dart';

class AyahSymbol extends StatelessWidget {
  final int verseNumber;

  const AyahSymbol({super.key, required this.verseNumber});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            fit: BoxFit.cover,
            'assets/images/AyahSymbol.png',
            width: 27,
            height: 26,
          ),
        ),
        Text(
          verseNumber.toString(),
          style: const TextStyle(fontSize: 9.1, color: AppColors.blackColor),
        ),
      ],
    );
  }
}
