import 'package:flutter/material.dart';

class OrganisationWidget extends StatefulWidget {
  const OrganisationWidget({super.key});

  @override
  State<OrganisationWidget> createState() => _OrganisationWidgetState();
}

class _OrganisationWidgetState extends State<OrganisationWidget> {
  List<String> organisation = [
    'https://i.postimg.cc/QtDHJQN6/pexels-photo-3026808.jpg',
    'https://i.postimg.cc/QtDHJQN6/pexels-photo-3026808.jpg',
    'https://i.postimg.cc/QtDHJQN6/pexels-photo-3026808.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 170,
        child: ListView.builder(
          itemBuilder: (ctx, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13.5),
            child: Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 270,
                  height: double.infinity,
                  child: Image.network(
                    organisation[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          itemCount: organisation.length,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
