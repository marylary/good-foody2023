import 'dart:async';
import 'package:flutter/material.dart';

import '../menu-food/menu-food.dart';
import '../widgets/categoriesWidget.dart';
import '../widgets/organisationWidget.dart';
import '../widgets/repasWidget.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

// import 'package:google_fonts/google_fonts.dart';
// import './burger.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _index = 2;
  final screens = [
    HomePage(),
    MenuFood(),
  ];
  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Transform.translate(
        offset: _index != 0
            ? Offset(0, 10.0)
            : Offset.zero, // Ajustez la valeur selon vos besoins
        child: Icon(
          Icons.grid_goldenratio_outlined,
          size: 30,
          color: _index == 0 ? Colors.white : Color(0xff1F618D),
        ),
      ),
      Transform.translate(
        offset: _index != 1
            ? Offset(0, 10.0)
            : Offset.zero, // Ajustez la valeur selon vos besoins
        child: Icon(
          Icons.food_bank_outlined,
          size: 30,
          color: _index == 1 ? Colors.white : Color(0xff1F618D),
        ),
      ),
      Transform.translate(
        offset: _index != 2
            ? Offset(0, 10.0)
            : Offset.zero, // Ajustez la valeur selon vos besoins
        child: Icon(
          Icons.home,
          size: 30,
          color: _index == 2 ? Colors.white : Color(0xff1F618D),
        ),
      ),
      Transform.translate(
        offset: _index != 3
            ? Offset(0, 10.0)
            : Offset.zero, // Ajustez la valeur selon vos besoins
        child: Icon(
          Icons.shutter_speed_outlined,
          size: 30,
          color: _index == 3 ? Colors.white : Color(0xff1F618D),
        ),
      ),
      Transform.translate(
        offset: _index != 4
            ? Offset(0, 10.0)
            : Offset.zero, // Ajustez la valeur selon vos besoins
        child: Icon(
          Icons.shopify,
          size: 30,
          color: _index == 4 ? Colors.white : Color(0xff1F618D),
        ),
      ),
    ];
    return Scaffold(
      bottomNavigationBar: Container(
        child: CurvedNavigationBar(
          backgroundColor: Color(0xffD4AC0D),
          buttonBackgroundColor: Color(0xff1F618D),

          // color: Colors.transparent,
          index: _index,
          items: items,
          onTap: (value) {
            setState(() {
              _index = value;
            });
          },
        ),
      ),
      // body: screens[_index],
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            // Icone menu
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.short_text_sharp,
                  color: Color(0xff1F618D),
                  size: 40,
                ),
                // Bar de recherche
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          // hintText: 'Rechercher',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          prefixIcon: Row(
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.search, color: Color(0xffD4AC0D)),
                              SizedBox(
                                  width:
                                      10), // Ajustez l'espace entre l'icône et le texte
                              Text(
                                'Rechercher',
                                style: TextStyle(
                                  color: Colors
                                      .grey, // Couleur du texte d'indicatif
                                ),
                              ),
                            ],
                          ),
                          suffixIcon: Icon(
                            Icons.filter_list,
                            color: Color(0xffD4AC0D),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // Icone panier
                Material(
                  elevation: 10,
                  color: Color(0xff1F618D),
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.shopping_cart_outlined,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // En tete
            Text(
              "Good Foody",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  shadows: [
                    Shadow(
                        color: Colors.grey.shade500,
                        offset: Offset(3.0, 3.0),
                        blurRadius: 3.0),
                    Shadow(
                        color: Colors.white,
                        offset: Offset(-3.0, 3.0),
                        blurRadius: 3.0),
                  ]),
            ),
            Text(
              "  Delicious repas et bon pour la santé",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                  fontSize: 15),
            ),
            SizedBox(
              height: 5,
            ),
            // categories
            CategoriesWdget(),

            SizedBox(
              height: 20,
            ),
            // menu
            RepasWidget(),

            SizedBox(
              height: 2,
            ),
            // Text organosation
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Best Food",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    shadows: [
                      Shadow(
                          color: Colors.grey.shade500,
                          offset: Offset(3.0, 3.0),
                          blurRadius: 3.0),
                      Shadow(
                          color: Colors.white,
                          offset: Offset(-3.0, 3.0),
                          blurRadius: 3.0),
                    ]),
              ),
            ),

            OrganisationWidget(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}


// Widget bnb(context) {
//   return Padding(
//     padding: EdgeInsets.symmetric(horizontal: 25),
//     child: Material(
//       elevation: 10,
//       borderRadius: BorderRadius.circular(25),
//       child: Container(
//         height: 60,
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//             // color: Color(0xff1F618D),
//             borderRadius: BorderRadius.circular(15)),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               decoration: BoxDecoration(
//                   shape: BoxShape.circle, color: Color(0xffD4AC0D)),
//               child: Padding(
//                 padding: EdgeInsets.all(10),
//                 child: Icon(
//                   Icons.home_outlined,
//                   color: Color(0xff1F618D),
//                   size: 30,
//                 ),
//               ),
//             ),
//             Icon(
//               Icons.account_balance_outlined,
//               color: Color(0xff1F618D),
//               size: 30,
//             ),
//             Icon(
//               Icons.account_balance_outlined,
//               color: Color(0xff1F618D),
//               size: 30,
//             ),
//             Icon(
//               Icons.message_outlined,
//               color: Color(0xff1F618D),
//               size: 30,
//             ),
//             Icon(
//               Icons.person_outline_sharp,
//               color: Color(0xff1F618D),
//               size: 30,
//             )
//           ],
//         ),
//       ),
//     ),
//   );
// }
