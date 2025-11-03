import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class GlobalStateManagement extends StatelessWidget {
  const GlobalStateManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              "assets/images/global_state.webp",
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                BulletText(text: Text("Provider",style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("Bloc", style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("Riverpod", style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("GetX", style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor),),
              ],
            )
          ),
        ],
      ),
    );
  }
}