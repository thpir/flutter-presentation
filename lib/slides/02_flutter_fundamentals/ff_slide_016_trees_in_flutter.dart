import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class TreesInFlutter extends StatelessWidget {
  const TreesInFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 120.0),
      child: Row(
        children: [
          Expanded(child: Column(
            children: [
              BulletText(text: Text("Crucial concept in Flutter app development.",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
              BulletText(text: Text("Is a hierarchical structure that defines and organizes all the widgets in your app.",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
              BulletText(text: Text("The root widget is the top of the tree and all others are child widgets.",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
              BulletText(text: Text("Flutter framework reads widget tree from top to bottom.",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
              Expanded(child: Image.asset(
                "assets/images/trees_in_flutter.webp",
                height: double.infinity,
                fit: BoxFit.contain,
              )),
            ],
          )),
          Expanded(child: Image.asset(
            "assets/images/widget_tree.webp",
            height: double.infinity,
            fit: BoxFit.contain,
          )),
        ]
      ),
    );
  }
}
