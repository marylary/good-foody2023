import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MenuFood extends StatefulWidget {
  const MenuFood({super.key});

  @override
  State<MenuFood> createState() => _MenuFoodState();
}

class _MenuFoodState extends State<MenuFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                          blurRadius: 3.0,
                        ),
                        Shadow(
                          color: Colors.white,
                          offset: Offset(-3.0, 3.0),
                          blurRadius: 3.0,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    "Delicious repas et bon pour la santé",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black54,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
              for (int i = 0; i < 20; i++)
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Container(
                    width: 400,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/img/pizza.png',
                              height: 120,
                              width: 150,
                            ),
                          ),
                        ),
                        Container(
                          width: 190,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Pizza",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Spécial goût et unique",
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                              RatingBar.builder(
                                initialRating: 3,
                                minRating: 2,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 18,
                                itemPadding:
                                    EdgeInsets.symmetric(horizontal: 4),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Color(0xffD4AC0D),
                                ),
                                onRatingUpdate: (index) {},
                              ),
                              Text(
                                "\$20",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xff1F618D),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(
                                Icons.favorite_border,
                                color: Color(0xff1F618D),
                                size: 26,
                              ),
                              Icon(
                                Icons.shopping_cart_outlined,
                                color: Color(0xff1F618D),
                                size: 26,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
