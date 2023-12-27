import 'package:flutter/material.dart';

class CategoriesWdget extends StatefulWidget {
  const CategoriesWdget({super.key});

  @override
  State<CategoriesWdget> createState() => _CategoriesWdgetState();
}

class _CategoriesWdgetState extends State<CategoriesWdget> {
  List<String> categories = [
    'assets/img/biryani.png',
    'assets/img/burger.png',
    'assets/img/pizza.png',
    'assets/img/salan.png',
    'assets/img/food.jpg',
    'assets/img/biryani.png',
    'assets/img/burger.png',
    'assets/img/pizza.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Container(
        height: 80,
        child: ListView.builder(
          itemBuilder: (ctx, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10.5),
            child: Material(
                color: Color(0xffD4AC0D),
                // color: Color(0xff1F618D),
                elevation: 10,
                borderRadius: BorderRadius.circular(18),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: 60,
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Image.asset(
                            'assets/img/burger.png',
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          ),
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
