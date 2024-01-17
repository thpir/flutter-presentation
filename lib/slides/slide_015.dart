import 'package:flutter/material.dart';

class Slide015 extends StatelessWidget {
  const Slide015({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 0.05),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Bullet(
            text: "Flutter is performant, snel, is goed gedocumenteerd en is populair", 
            width: width
          ),
          Bullet(
            text: "Flutter is een must wanneer applicatie op meerdere platformen moet draaien", 
            width: width
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: width * 0.05), 
            child: Text(
              'MAAR',
              style: TextStyle(
                fontSize: width * 0.022,
              ),
            ),
          ),
          Bullet(
            text: "Veel native ontwikkelde apps in productie", 
            width: width
          ),
          Bullet(
            text: "Goede native ontwikkelaars worden in de toekomst een zeldzaam ras", 
            width: width
          ),
          Bullet(
            text: "Handig om zelf packages te schrijven en bug fixing te doen op packages", 
            width: width
          ),
        ],
      ),
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  final double width;
  const Bullet({required this.text, required this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: width * 0.005),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "• ",
            style: TextStyle(
              fontSize: width * 0.022,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: width * 0.022,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
