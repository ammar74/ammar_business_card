import 'package:ammar_business_card/screens/github_screen.dart';
import 'package:ammar_business_card/screens/home_screen.dart';
import 'package:ammar_business_card/screens/linkedin_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BusinessCardApp());
}

class BusinessCardApp extends StatelessWidget {
  const BusinessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      routes: {
        HomeScreen.id : (context) => const HomeScreen(),
        LinkedInWebView.id : (context) => const LinkedInWebView(),
        GithubWebView.id : (context) => const GithubWebView(),
      },
      initialRoute:  HomeScreen.id,
    );
  }
}


