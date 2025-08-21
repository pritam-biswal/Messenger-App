import 'dart:async';
import 'package:flutter/material.dart';
import 'package:messenger_design/repository/screens/bottomnavigation/contacts/contactscreen.dart';
import 'package:messenger_design/repository/screens/onboardingscreen.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => Splash_ScreenState();
}

class Splash_ScreenState extends State<Splash_Screen> {
  static const String KEYLOGIN = "login";
  @override
  void initState() {
    super.initState();
    Wheretogo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: UiHelper.customImage(imgurl: "splash_icon.png")),
    );
  }

  Future<void> Wheretogo() async {
    var sharedpref = await SharedPreferences.getInstance();
    var IsLoggedin = sharedpref.getBool(KEYLOGIN);

    Timer(Duration(seconds: 1), () {
      if (IsLoggedin != null) {
        if (IsLoggedin) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Contactscreen();
              },
            ),
          );
        } else {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return Onboardingscreen();
              },
            ),
          );
        }
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Onboardingscreen();
            },
          ),
        );
      }
    });
  }
}
