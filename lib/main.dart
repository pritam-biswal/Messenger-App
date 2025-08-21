import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messenger_design/domain/constants/appthemes.dart';
import 'package:messenger_design/domain/constants/cubits/themecubit.dart';
import 'package:messenger_design/domain/constants/cubits/themestates.dart';
import 'package:messenger_design/repository/screens/onboardingscreen.dart';
import 'package:messenger_design/repository/screens/splash_screen/splash.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeStates>(
      builder: (context, state) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Messenger App',
          theme: state is LightThemeStates
              ? AppThemes.lightTheme
              : AppThemes.darkTheme,
          home: Splash_Screen(),
        );
      },
    );
  }
}
