import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  SebhaScreenState createState() => SebhaScreenState();
}

class SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  int loopCounter = 0;

  @override
  void initState() {
    super.initState();
    _loadLoopCounter();
  }

  void _loadLoopCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      loopCounter = prefs.getInt('loopCounter') ?? 0;
    });
  }

  void _saveLoopCounter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('loopCounter', loopCounter);
  }

  void incrementCounter() {
    setState(() {
      if (counter < 99) {
        counter++;
      } else {
        counter = 0;
        loopCounter++;
        _saveLoopCounter();
      }
    });
  }

  void resetLoopCounter() {
    setState(() {
      loopCounter = 0;
      _saveLoopCounter();
    });
  }

  String get displayText {
    if (counter == 99) {
      return "لا إله إلا الله";
    } else if (counter % 99 < 33) {
      return "سبحان الله";
    } else if (counter % 99 < 66) {
      return "الحمدلله";
    } else {
      return "استغفر الله";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Image.asset(
                'assets/images/sebha.png',
                color: Theme.of(context).dividerTheme.color,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                AppLocalizations.of(context)!.tasbeh,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.bold, fontFamily: "Amiri"),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).highlightColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "$counter",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold, fontFamily: "Amiri"),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ElevatedButton(
                onPressed: incrementCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                ),
                child: Text(
                  displayText,
                  style: Theme.of(context)
                      .textTheme
                      .displaySmall
                      ?.copyWith(fontSize: 22),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              Text(
                '${AppLocalizations.of(context)!.loops}: $loopCounter',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ElevatedButton(
                onPressed: resetLoopCounter,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Icon(
                  Icons.refresh_rounded,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
