import 'package:flutter/material.dart';

class Slide000 extends StatelessWidget {
  const Slide000({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 300),
            child: Align(
              alignment: Alignment.topLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter demo",
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 80,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 50),
                  Text(
                    "Thijs Pirmez",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
            ),
          ), 
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/personalized_dash.webp",
              height: 700,
              fit: BoxFit.contain,
            ),
          ),
        ],
      )
    );
  }
}
