import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamyapplication/providers/app_lang_provider.dart';
import 'package:islamyapplication/providers/app_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dividerColors = DividerTheme.of(context).color;
    final buttonWidth = MediaQuery.of(context).size.width * 0.40;
    bool isDarkTheme() => Provider.of<ThemeProvider>(context).isDarkTheme();
    bool isEnglish() => Provider.of<LanguageProvider>(context).isEnglish();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Card(
            margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.012,
              vertical: MediaQuery.of(context).size.height * 0.050,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Text(
                  AppLocalizations.of(context)!.settings,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Divider(
                  indent: MediaQuery.of(context).size.width * 0.10,
                  endIndent: MediaQuery.of(context).size.width * 0.10,
                  color: dividerColors,
                  height: 2,
                  thickness: 3,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(AppLocalizations.of(context)!.language,
                    style: Theme.of(context).textTheme.bodySmall),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Consumer<LanguageProvider>(
                  builder: (context, languageProvider, child) {
                    return DropdownButtonHideUnderline(
                      child: DropdownButton2<String>(
                        buttonStyleData: ButtonStyleData(
                          width: buttonWidth,
                          decoration: BoxDecoration(
                            color: Theme.of(context).highlightColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        iconStyleData: IconStyleData(
                          iconSize: 24,
                          icon: Container(
                            margin:
                                const EdgeInsets.only(right: 16.0, left: 16.0),
                            child: isEnglish()
                                ? Text('EN',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(fontWeight: FontWeight.bold))
                                : Text(
                                    'ع',
                                    style: Theme.of(context)
                                        .textTheme
                                        .displaySmall!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: 'en',
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(AppLocalizations.of(context)!.english,
                                  style:
                                      Theme.of(context).textTheme.displaySmall),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'ar',
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(AppLocalizations.of(context)!.arabic,
                                  style:
                                      Theme.of(context).textTheme.displaySmall),
                            ),
                          ),
                        ],
                        value: languageProvider.appLanguage,
                        onChanged: (value) {
                          if (value != null) {
                            languageProvider.setLanguage(value);
                          }
                        },
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Theme.of(context).highlightColor,
                          ),
                        ),
                        menuItemStyleData: MenuItemStyleData(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Divider(
                  indent: MediaQuery.of(context).size.width * 0.10,
                  endIndent: MediaQuery.of(context).size.width * 0.10,
                  color: dividerColors,
                  height: 2,
                  thickness: 3,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(AppLocalizations.of(context)!.theme,
                    style: Theme.of(context).textTheme.bodySmall),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                Consumer<ThemeProvider>(
                  builder: (context, themeProvider, child) {
                    return DropdownButtonHideUnderline(
                      child: DropdownButton2<ThemeMode>(
                        buttonStyleData: ButtonStyleData(
                          width: buttonWidth,
                          decoration: BoxDecoration(
                            color: Theme.of(context).highlightColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        iconStyleData: IconStyleData(
                          iconSize: 24,
                          icon: Container(
                            margin:
                                const EdgeInsets.only(right: 14.0, left: 14.0),
                            child: Icon(
                              isDarkTheme()
                                  ? Icons.brightness_2
                                  : CupertinoIcons.sun_max,
                              color: Theme.of(context).iconTheme.color,
                            ),
                          ),
                        ),
                        items: [
                          DropdownMenuItem(
                            value: ThemeMode.light,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(AppLocalizations.of(context)!.light,
                                  style:
                                      Theme.of(context).textTheme.displaySmall),
                            ),
                          ),
                          DropdownMenuItem(
                            value: ThemeMode.dark,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(AppLocalizations.of(context)!.dark,
                                  style:
                                      Theme.of(context).textTheme.displaySmall),
                            ),
                          ),
                        ],
                        value: themeProvider.themeMode,
                        onChanged: (value) {
                          if (value != null) {
                            themeProvider.toggleTheme(value);
                          }
                        },
                        dropdownStyleData: DropdownStyleData(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Theme.of(context).highlightColor,
                          ),
                        ),
                        menuItemStyleData: MenuItemStyleData(
                          height: MediaQuery.of(context).size.height * 0.06,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
