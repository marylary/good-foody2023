import 'package:flutter/material.dart';
import '../login/login.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
    await Future.delayed(const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Color(0xffD4AC0D),
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: Center(
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: ' Good Foody',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            right: 30,
            bottom: 30,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  "assets/img/imag.jpg",
                  fit: BoxFit.contain,
                ),
                Positioned(
                  bottom: 20,
                  right: 20,
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50,
            child: Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff1F618D),
                    onPrimary: Color(0xffD4AC0D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    'Découvrir',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
