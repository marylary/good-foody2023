import 'package:flutter/material.dart';

import '../home/food.dart';

class RepasWidget extends StatefulWidget {
  const RepasWidget({super.key});

  @override
  State<RepasWidget> createState() => _RepasWidgetState();
}

class _RepasWidgetState extends State<RepasWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        clipBehavior: Clip.none,
        height: 250,
        child: Padding(
          padding: EdgeInsets.only(top: 50),
          child: ListView.builder(
              clipBehavior: Clip.none,
              itemCount: foods.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) => menu(ctx, i)),
        ),
      ),
    );
  }
}

Widget menu(BuildContext context, int index) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 10),
    child: Stack(
      clipBehavior: Clip.none,
      children: [
        Material(
            elevation: 10,
            borderRadius: BorderRadius.circular(20),
            color: Color(0xffD4AC0D),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 180,
                    width: 200,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 90,
                          ),
                          Text(
                            foods[index].name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            foods[index].desc,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black26,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            foods[index].price,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
        Positioned(
          bottom: 25,
          right: 25,
          child: Icon(
            Icons.favorite_outline,
            color: Colors.black87,
          ),
        ),
        Positioned(
          bottom: 110,
          left: 20,
          child: SizedBox(
            height: 150, // Hauteur souhaitée pour l'image
            width: 150, // Largeur souhaitée pour l'image
            child: Image.network(
              foods[index].imgUrl,
              // fit: BoxFit.cover, // Ajustement de l'image à la taille définie
            ),
          ),
        ),
      ],
    ),
  );
}
