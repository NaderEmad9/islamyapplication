<<<<<<< HEAD
import 'package:flutter/material.dart';

class SebhaScreen extends StatelessWidget {
  const SebhaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black26,
=======
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
  final ValueNotifier<double> _rotationAngle = ValueNotifier<double>(0);

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
        _rotationAngle.value = (_rotationAngle.value + 16) % 360;
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
      return AppLocalizations.of(context)!.laillahaillallah;
    } else if (counter % 99 < 33) {
      return AppLocalizations.of(context)!.subhanallah;
    } else if (counter % 99 < 66) {
      return AppLocalizations.of(context)!.alhamd;
    } else {
      return AppLocalizations.of(context)!.astaghfirullah;
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
              Stack(
                alignment: Alignment.center,
                children: [
                  Transform.translate(
                    offset: Offset(MediaQuery.of(context).size.height * -0.02,
                        -MediaQuery.of(context).size.width * 0.5 * -0.6),
                    child: SvgPicture.asset(
                      'assets/images/Sebhasv.svg',
                      width: MediaQuery.of(context).size.width * 0.35,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ValueListenableBuilder<double>(
                    valueListenable: _rotationAngle,
                    builder: (context, angle, child) {
                      return Transform(
                        transform: Matrix4.rotationZ(angle * 3.14159 / 180),
                        alignment: Alignment.center,
                        child: SvgPicture.asset(
                          'assets/images/Sebha3.svg',
                          width: MediaQuery.of(context).size.width * 0.5,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.10,
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
>>>>>>> Development
    );
  }
}
