import 'package:flutter/material.dart';

class ItemHadithDetails extends StatelessWidget {
  final content;
  ItemHadithDetails({required this.content});
  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.displaySmall,
    );
  }
}
