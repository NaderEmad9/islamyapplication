import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamyapplication/AppColors.dart';
import 'package:islamyapplication/Hadeth/HadethScreen.dart';
import 'package:islamyapplication/Hadeth/HadithItemDetails.dart';

class HadithDetailsScreen extends StatefulWidget {
  static const routeName = "HadithDetails";

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Stack(
      children: [
        Image.asset(
          'assets/images/LightBackground.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              "Islamy",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(22),
            child: Card(
              color: CupertinoColors.white,
              margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.012,
                vertical: MediaQuery.of(context).size.height * 0.050,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Center(
                      child: Text(
                        args.title,
                        style: Theme.of(context).textTheme.bodySmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Center(
                      child: Divider(
                        indent: MediaQuery.of(context).size.width * 0.10,
                        endIndent: MediaQuery.of(context).size.width * 0.10,
                        color: AppColors.primaryLightColor,
                        height: 2,
                        thickness: 3,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                          color: AppColors.primaryLightColor,
                          thickness: 2,
                        ),
                        itemBuilder: (context, index) {
                          return ItemHadithDetails(
                            content: args.content[index],
                          );
                        },
                        itemCount: args.content.length,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
