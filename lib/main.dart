import 'package:flutter/material.dart';
import 'package:zaf/feature/Test.dart';
import 'package:zaf/feature/auth/auth.dart';
import 'package:zaf/feature/home/ui/home_page.dart';
import 'package:zaf/feature/onbording/ui/onboarding_screen.dart';
import 'package:zaf/feature/splash/ui/splash_screen.dart';
import 'package:zaf/home_screen.dart';

void main() {
  runApp(const Zaf());
}

class Zaf extends StatelessWidget {
  const Zaf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home:  HomeScreen(),
      //initialRoute: '/splash',
      //routes: {
       // '/splash': (context) => const SplashScreen(),
       // '/onboarding': (context) => const OnboardingScreen(),
       // '/test': (context) => const Test(),
       // '/Auth': (context) => const Auth(),

       // '/home_page': (context) => HomePage(),

     // },

    );
  }
}
