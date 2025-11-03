import 'package:flutter/material.dart';
import 'package:flutter_intro/howest_style.dart';
import 'package:flutter_intro/templates/widgets/bullet_text.dart';

class CreateANewProject extends StatelessWidget {
  const CreateANewProject({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                Text("In the terminal:",style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor, fontWeight: FontWeight.bold),),
                BulletText(text: Text("flutter create my_awesome_project",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("cd my_awesome_project", style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("code . (VS-code openen in projectmap)", style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
                Text("Options:",style: HowestStyle.howestTextTheme.bodyMedium.copyWith(color: HowestStyle.primaryTextColor, fontWeight: FontWeight.bold),),
                BulletText(text: Text("flutter create “My Awesome App” --project-name =“my_awesome_app”",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("flutter create my_awesome_app --platforms=“android,ios”",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("flutter create my_awesome_app --org=“ com.my_company”",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
                BulletText(text: Text("flutter create my_awesome_app --empty",style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),), style: HowestStyle.howestTextTheme.bodySmall.copyWith(color: HowestStyle.primaryTextColor),),
              ]
            )
          ),
          Expanded(
            child: Image.asset(
              "assets/images/flutter_create.webp",
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}