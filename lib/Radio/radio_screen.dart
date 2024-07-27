import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  RadioScreenState createState() => RadioScreenState();
}

class RadioScreenState extends State<RadioScreen> {
  bool isPlaying = false;

  void _togglePlayPause() {
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);

    IconData backIcon = currentLocale.languageCode == 'ar'
        ? FluentIcons.arrow_step_over_20_regular
        : FluentIcons.arrow_step_back_20_regular;

    IconData forwardIcon = currentLocale.languageCode == 'ar'
        ? FluentIcons.arrow_step_back_20_regular
        : FluentIcons.arrow_step_over_20_regular;

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/EffortCause.png',
                width: MediaQuery.of(context).size.width * 0.80,
              ),
              Text(
                AppLocalizations.of(context)!.qurradio,
                style: Theme.of(context)
                    .textTheme
                    .displaySmall
                    ?.copyWith(fontSize: 30),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: Icon(backIcon,
                        size: 30, color: Theme.of(context).iconTheme.color),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: Icon(
                      isPlaying
                          ? FluentIcons.pause_48_regular
                          : FluentIcons.play_48_regular,
                      size: 30,
                      color: Theme.of(context).iconTheme.color,
                    ),
                    onPressed: _togglePlayPause,
                  ),
                  IconButton(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    icon: Icon(forwardIcon,
                        size: 30, color: Theme.of(context).iconTheme.color),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
