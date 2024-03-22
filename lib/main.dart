import 'package:flutter/material.dart';
import 'package:flutter_workshop/pages/login_page.dart';
import 'package:flutter_workshop/pages/onboarding_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}