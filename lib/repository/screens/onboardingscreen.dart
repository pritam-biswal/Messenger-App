import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_design/domain/constants/appcolors.dart';
import 'package:messenger_design/domain/constants/cubits/themecubit.dart';
import 'package:messenger_design/repository/screens/login/login_screen.dart';
import 'package:messenger_design/repository/screens/widgets/uihelper.dart';

class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggletheme();
            },
            icon: Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imgurl: "onboarding.png"),
            SizedBox(width: 20),
            UiHelper.customText(
              text: "Connect easily with",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.w700,
              context: context,
            ),
            UiHelper.customText(
              text: "your family and friends",
              fontsize: 24,
              fontweight: FontWeight.w700,
              fontfamily: "bold",
              context: context,
            ),
            UiHelper.customText(
              text: "over countries",
              fontsize: 24,
              fontweight: FontWeight.w700,
              fontfamily: "bold",
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.customButton(
        buttoname: "Start Messaging",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        buttoncolor: Color(0xFF002DE3),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
