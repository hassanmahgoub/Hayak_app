import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:hayak_app/Screens/BeginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splashIconSize: 400,
        backgroundColor: const Color(0xff05357D),
        duration: 5500,
        splashTransition: SplashTransition.fadeTransition,
        splash: Image.asset('assets/images/stadia.png',), nextScreen: const BeginScreen())
    );
  }
}
