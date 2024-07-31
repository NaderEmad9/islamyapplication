<<<<<<< HEAD
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/hadith_screen.dart';
import 'package:islamyapplication/Hadeth/hadith_item_details.dart';
import 'package:islamyapplication/app_colors.dart';
=======
import 'package:flutter/material.dart';
import 'package:islamyapplication/Hadeth/hadith_screen.dart';
import 'package:islamyapplication/Hadeth/hadith_item_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamyapplication/providers/app_theme_provider.dart';
import 'package:provider/provider.dart';
>>>>>>> Development

class HadithDetailsScreen extends StatefulWidget {
  static const routeName = "HadithDetails";

  const HadithDetailsScreen({super.key});

  @override
  State<HadithDetailsScreen> createState() => _HadithDetailsScreenState();
}

class _HadithDetailsScreenState extends State<HadithDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    var themeProvider = Provider.of<ThemeProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadith;
    return Stack(
      children: [
        themeProvider.isDarkTheme()
            ? Image.asset('assets/images/DarkBackground.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover)
            : Image.asset('assets/images/LightBackground.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
>>>>>>> Development
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(22),
            child: Card(
              elevation: 3,
<<<<<<< HEAD
              color: CupertinoColors.white,
=======
              color: Theme.of(context).cardTheme.color,
>>>>>>> Development
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
<<<<<<< HEAD
                        color: AppColors.primaryLightColor,
=======
                        color: Theme.of(context).dividerTheme.color,
>>>>>>> Development
                        height: 2,
                        thickness: 3,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: ListView.separated(
<<<<<<< HEAD
                        separatorBuilder: (context, index) => const Divider(
                          color: AppColors.primaryLightColor,
=======
                        separatorBuilder: (context, index) => Divider(
                          color: Theme.of(context).dividerTheme.color,
>>>>>>> Development
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
