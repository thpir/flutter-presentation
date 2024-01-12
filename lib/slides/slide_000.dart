import 'package:flutter/material.dart';

class Slide000 extends StatelessWidget {
  const Slide000({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.2),
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
                      fontSize: width * 0.05,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: width * 0.03),
                  Text(
                    "Thijs Pirmez",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.03,
                    ),
                  ),
                ],
              ),
            ),
          ), 
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/personalized_dash.png",
              height: width * 0.4,
              fit: BoxFit.contain,
            ),
          ),
        ],
      )
    );
  }
}
