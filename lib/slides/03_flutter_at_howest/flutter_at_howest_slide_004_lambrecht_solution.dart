import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';
import 'package:flutter_intro/utils/url_handler.dart';

class LambrechtSolution extends StatelessWidget {
  const LambrechtSolution({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.only(left: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                Text(
                  "Development of a smartphone application that:",
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                    color: HowestStyle.primaryTextColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
                BulletText(
                  text: Text("Replaces the Silo tag-reader and therefore eliminates the hardware cost for the customer.", style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor)),
                BulletText(
                  text: Text("Makes the unloading process dummy-proof.", style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor)),
                SizedBox(height: 20),
                Text(
                  "How?",
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(
                    color: HowestStyle.primaryTextColor,
                    fontWeight: FontWeight.bold
                  ),
                ),
                BulletText(
                  text: Text("Computer vision for hose / pipe connection check.", style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor)),
                BulletText(
                  text: Text("OCR for reading the silo number.", style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
                  style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor)),
                SizedBox(height: 10),
                TextButton.icon(
                  label: Text(
                    "Watch the full informational video on YouTube",
                    style: HowestStyle.howestTextTheme.bodySmall
                        .copyWith(color: HowestStyle.primaryColor),
                  ),
                  onPressed:() async {
                        await UrlHandler().visitUrl("https://youtu.be/Gh-jlMLTISo");
                      }, icon: Icon(Icons.movie_creation_outlined, color: HowestStyle.primaryColor, size: 40,),),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: SizedBox.expand(
            child: Image.asset(
              "assets/images/siloconnect2_mockup.png",
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
