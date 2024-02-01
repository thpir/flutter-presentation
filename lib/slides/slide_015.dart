import 'package:flutter/material.dart';

class Slide015 extends StatelessWidget {
  const Slide015({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Bullet(
            text: "Flutter is performant, snel, is goed gedocumenteerd en is populair", 
          ),
          Bullet(
            text: "Flutter is een must wanneer applicatie op meerdere platformen moet draaien", 
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 40), 
            child: Text(
              'MAAR',
              style: TextStyle(
                fontSize: 46,
              ),
            ),
          ),
          Bullet(
            text: "Veel native ontwikkelde apps in productie", 
          ),
          Bullet(
            text: "Goede native ontwikkelaars worden in de toekomst een zeldzaam ras", 
          ),
          Bullet(
            text: "Handig om zelf packages te schrijven en bug fixing te doen op packages", 
          ),
        ],
      ),
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  const Bullet({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            "• ",
            style: TextStyle(
              fontSize: 46,
            ),
          ),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 46,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
