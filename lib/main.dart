import 'package:flutter/material.dart';
import 'package:good_foody/pages/welcome/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Good Foody',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Montserrat",
      ),
      home: const WelcomePage(),
    );
  }
}
