import 'dart:async';
import 'package:flutter/material.dart';

import '../home/home.dart';
// import 'package:iconsax/iconsax.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  int activeIndex = 0;
  bool? isRememberMe = false;

  @override
  void initState() {
    Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        activeIndex++;

        if (activeIndex == 4) activeIndex = 0;
      });
    });

    super.initState();
  }

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'Email',
        //   style: TextStyle(
        //       color: Color(0xff2E86C1),
        //       fontSize: 16,
        //       fontWeight: FontWeight.bold),
        // ),
        // SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                )
              ]),
          height: 60,
          child: TextField(
            // controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.black87),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.email,
                color: Color(0xff2E86C1),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.black38),
            ),
            onChanged: (value) {
              // _email = value;
            },
          ),
        )
      ],
    );
  }

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   'Mot de passe',
        //   style: TextStyle(
        //     color: Color(0xff2E86C1),
        //     fontSize: 16,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        SizedBox(height: 20),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 6,
              ),
            ],
          ),
          height: 60,
          child: Stack(
            alignment: Alignment.centerRight, // Alignez le bouton à droite
            children: [
              TextField(
                // controller: _passwordController,
                // Pour cacher le texte
                // obscureText:
                // !_passwordVisible, // Masque le texte si _passwordVisible est faux
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Color(0xff2E86C1),
                  ),
                  hintText: '8 caractères au minimum',
                  hintStyle: TextStyle(color: Colors.black38),
                ),
                onChanged: (value) {
                  // _password = value;
                },
              ),
              // IconButton(
              //   onPressed: () {
              //     // Inversez la visibilité du mot de passe lorsque le bouton est pressé
              //     setState(() {
              //       _passwordVisible = !_passwordVisible;
              //     });
              //   },
              //   icon: Icon(
              //     _passwordVisible ? Icons.visibility : Icons.visibility_off,
              //     color: Colors.black38,
              //   ),
              // ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildForgotPasswordBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () {
          // Navigator.of(context).push(MaterialPageRoute(
          //   builder: (BuildContext context) => const PasswordforgetDesign(),
          // ));
        },
        //padding: EdgeInsets.only(right: 0),
        child: Text(
          'Mot de passe oublié?',
          style: TextStyle(
            color: Color(0xff000000),
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: [
          Theme(
              data: ThemeData(unselectedWidgetColor: Color(0xff2E86C1)),
              child: Checkbox(
                value: isRememberMe,
                checkColor: Colors.white,
                activeColor: Color(0xff2E86C1),
                onChanged: (value) {
                  setState(() {
                    isRememberMe = value;
                  });
                },
              )),
          Text('Se souvenir de moi',
              style: TextStyle(
                color: Color(0xff000000),
                fontSize: 13,
                // fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    elevation: 5,
    onPrimary: Colors.black87,
    primary: Colors.grey[300],
    minimumSize: Size(88, 36),
    padding: EdgeInsets.all(15),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
    ),
  );

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          primary: Color(0xff2E86C1), // Couleur de fond bleue
          minimumSize: Size(88, 36),
          padding: EdgeInsets.all(15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        child: Text(
          'Se connecter',
          style: TextStyle(
            color: Color(0xffF4D03F), // Couleur du texte en blanc
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildRegisterBtn() {
    return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (BuildContext context) => const RegisterDesign(),
        // ));
      },
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Vous n\'avez pas un compte?',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              )),
          TextSpan(
              text: ' Créer un compte',
              style: TextStyle(
                color: Color(0xff2E86C1),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        // physics: AlwaysScrollableScrollPhysics(),

        child: Stack(
          children: [
            Container(
              height: 300,
              child: Stack(children: [
                Positioned(
                  top: 50,
                  left: 50,
                  right: 50,
                  bottom: 50,
                  child: AnimatedOpacity(
                      opacity: activeIndex == 0 ? 1 : 0,
                      duration: Duration(
                        seconds: 1,
                      ),
                      curve: Curves.linear,
                      child: Image.asset(
                        "assets/img/cle.png",
                        fit: BoxFit.contain,
                      )),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  right: 50,
                  bottom: 50,
                  child: AnimatedOpacity(
                      opacity: activeIndex == 1 ? 1 : 0,
                      duration: Duration(seconds: 1),
                      curve: Curves.linear,
                      child: Image.asset(
                        "assets/img/cc.jpg",
                        fit: BoxFit.contain,
                      )),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  right: 50,
                  bottom: 50,
                  child: AnimatedOpacity(
                    opacity: activeIndex == 2 ? 1 : 0,
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                    child: Image.network(
                      'https://ouch-cdn2.icons8.com/fv7W4YUUpGVcNhmKcDGZp6pF1-IDEyCjSjtBB8-Kp_0/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTUv/ZjUzYTU4NDAtNjBl/Yy00ZWRhLWE1YWIt/ZGM1MWJmYjBiYjI2/LnN2Zw.png',
                      height: 100,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 50,
                  right: 50,
                  bottom: 50,
                  child: AnimatedOpacity(
                    opacity: activeIndex == 3 ? 1 : 0,
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                    child: Image.network(
                      'https://ouch-cdn2.icons8.com/AVdOMf5ui4B7JJrNzYULVwT1z8NlGmlRYZTtg1F6z9E/rs:fit:784:767/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvOTY5/L2NlMTY1MWM5LTRl/ZjUtNGRmZi05MjQ3/LWYzNGQ1MzhiOTQ0/Mi5zdmc.png',
                      height: 100,
                    ),
                  ),
                )
              ]),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                //permet de scroller le haut
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 130,
                    ),
                    Text(
                      'Connexion',
                      style: TextStyle(
                          color: Color(0xff2E86C1),
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 50),
                    buildEmail(),
                    SizedBox(height: 25),
                    buildPassword(),
                    buildForgotPasswordBtn(),
                    buildRememberCb(),
                    SizedBox(height: 25),
                    buildLoginBtn(),
                    SizedBox(height: 10),
                    buildRegisterBtn(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //       body: SingleChildScrollView(
  //     child: Padding(
  //       padding: EdgeInsets.all(20.0),
  //       child: Column(
  //         children: [
  //           SizedBox(
  //             height: 50,
  //           ),
  //           Container(
  //             height: 350,
  //             child: Stack(children: [
  //               Positioned(
  //                 top: 0,
  //                 left: 0,
  //                 right: 0,
  //                 bottom: 0,
  //                 child: AnimatedOpacity(
  //                   opacity: activeIndex == 0 ? 1 : 0,
  //                   duration: Duration(
  //                     seconds: 1,
  //                   ),
  //                   curve: Curves.linear,
  //                   child: Image.network(
  //                     'https://ouch-cdn2.icons8.com/As6ct-Fovab32SIyMatjsqIaIjM9Jg1PblII8YAtBtQ/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTg4/LzNmMDU5Mzc0LTky/OTQtNDk5MC1hZGY2/LTA2YTkyMDZhNWZl/NC5zdmc.png',
  //                     height: 400,
  //                   ),
  //                 ),
  //               ),
  //               Positioned(
  //                 top: 0,
  //                 left: 0,
  //                 right: 0,
  //                 bottom: 0,
  //                 child: AnimatedOpacity(
  //                   opacity: activeIndex == 1 ? 1 : 0,
  //                   duration: Duration(seconds: 1),
  //                   curve: Curves.linear,
  //                   child: Image.network(
  //                     'https://ouch-cdn2.icons8.com/vSx9H3yP2D4DgVoaFPbE4HVf6M4Phd-8uRjBZBnl83g/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNC84/MzcwMTY5OS1kYmU1/LTQ1ZmEtYmQ1Ny04/NTFmNTNjMTlkNTcu/c3Zn.png',
  //                     height: 400,
  //                   ),
  //                 ),
  //               ),
  //               Positioned(
  //                 top: 0,
  //                 left: 0,
  //                 right: 0,
  //                 bottom: 0,
  //                 child: AnimatedOpacity(
  //                   opacity: activeIndex == 2 ? 1 : 0,
  //                   duration: Duration(seconds: 1),
  //                   curve: Curves.linear,
  //                   child: Image.network(
  //                     'https://ouch-cdn2.icons8.com/fv7W4YUUpGVcNhmKcDGZp6pF1-IDEyCjSjtBB8-Kp_0/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvMTUv/ZjUzYTU4NDAtNjBl/Yy00ZWRhLWE1YWIt/ZGM1MWJmYjBiYjI2/LnN2Zw.png',
  //                     height: 400,
  //                   ),
  //                 ),
  //               ),
  //               Positioned(
  //                 top: 0,
  //                 left: 0,
  //                 right: 0,
  //                 bottom: 0,
  //                 child: AnimatedOpacity(
  //                   opacity: activeIndex == 3 ? 1 : 0,
  //                   duration: Duration(seconds: 1),
  //                   curve: Curves.linear,
  //                   child: Image.network(
  //                     'https://ouch-cdn2.icons8.com/AVdOMf5ui4B7JJrNzYULVwT1z8NlGmlRYZTtg1F6z9E/rs:fit:784:767/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvOTY5/L2NlMTY1MWM5LTRl/ZjUtNGRmZi05MjQ3/LWYzNGQ1MzhiOTQ0/Mi5zdmc.png',
  //                     height: 400,
  //                   ),
  //                 ),
  //               )
  //             ]),
  //           ),
  //           SizedBox(
  //             height: 40,
  //           ),
  //           TextField(
  //             cursorColor: Colors.black,
  //             decoration: InputDecoration(
  //               contentPadding: EdgeInsets.all(0.0),
  //               labelText: 'Email',
  //               hintText: 'Username or e-mail',
  //               labelStyle: TextStyle(
  //                 color: Color(0xff2E86C1), // Couleur du labelText
  //                 fontSize: 14.0,
  //                 fontWeight: FontWeight.w400,
  //               ),
  //               hintStyle: TextStyle(
  //                 color: Colors.grey,
  //                 fontSize: 14.0,
  //               ),
  //               enabledBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: Color(0xffF4D03F),
  //                     width:
  //                         1.5), // Couleur de la bordure lorsqu'il est sélectionné
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //             ),
  //           ),
  //           SizedBox(
  //             height: 20,
  //           ),
  //           TextField(
  //             cursorColor: Colors.black,
  //             decoration: InputDecoration(
  //               contentPadding: EdgeInsets.all(0.0),
  //               labelText: 'Password',
  //               hintText: 'Password',
  //               labelStyle: TextStyle(
  //                 color: Color(0xff2E86C1), // Couleur du labelText
  //                 fontSize: 14.0,
  //                 fontWeight: FontWeight.w400,
  //               ),
  //               hintStyle: TextStyle(
  //                 color: Colors.grey,
  //                 fontSize: 14.0,
  //               ),
  //               enabledBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(color: Colors.grey.shade200, width: 2),
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //               focusedBorder: OutlineInputBorder(
  //                 borderSide: BorderSide(
  //                     color: Color(0xffF4D03F),
  //                     width:
  //                         1.5), // Couleur de la bordure lorsqu'il est sélectionné
  //                 borderRadius: BorderRadius.circular(10.0),
  //               ),
  //             ),
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.end,
  //             children: [
  //               TextButton(
  //                 onPressed: () {},
  //                 child: Text(
  //                   'Forgot Password?',
  //                   style: TextStyle(
  //                       color: Colors.black,
  //                       fontSize: 14.0,
  //                       fontWeight: FontWeight.w400),
  //                 ),
  //               )
  //             ],
  //           ),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           MaterialButton(
  //             onPressed: () {},
  //             height: 45,
  //             color: Colors.black,
  //             child: Text(
  //               "Login",
  //               style: TextStyle(color: Colors.white, fontSize: 16.0),
  //             ),
  //             padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
  //             shape: RoundedRectangleBorder(
  //               borderRadius: BorderRadius.circular(10.0),
  //             ),
  //           ),
  //           SizedBox(
  //             height: 30,
  //           ),
  //           Row(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Text(
  //                 'Don\'t have an account?',
  //                 style: TextStyle(
  //                     color: Colors.grey.shade600,
  //                     fontSize: 14.0,
  //                     fontWeight: FontWeight.w400),
  //               ),
  //               TextButton(
  //                 onPressed: () {},
  //                 child: Text(
  //                   'Register',
  //                   style: TextStyle(
  //                       color: Colors.blue,
  //                       fontSize: 14.0,
  //                       fontWeight: FontWeight.w400),
  //                 ),
  //               )
  //             ],
  //           ),
  //         ],
  //       ),
  //     ),
  //   ));
  // }
}
