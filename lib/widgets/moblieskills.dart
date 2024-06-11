import 'package:flutter/material.dart';
import 'package:port/constants/colors.dart';
import 'package:port/constants/skillitems.dart';

class MobileSkills extends StatelessWidget {
  const MobileSkills({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(
        children: [
          for (int i = 0; i < platformItems.length; i++)
            Container(
                margin: EdgeInsets.only(bottom: 5),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: CustomColor.bgLight2,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  leading: Image.asset(
                    platformItems[i]["img"],
                    width: 26,
                  ),
                  title: Text(platformItems[i]["title"]),
                )),
          SizedBox(
            height: 50,
          ),
          Wrap(
            spacing: 20,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children: [
              for (int i = 0; i < skillItems.length; i++)
                Chip(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  backgroundColor: CustomColor.bgLight2,
                  label: Text(
                    skillItems[i]["title"],
                  ),
                  avatar: Image.asset(skillItems[i]["img"]),
                )
            ],
          )
        ],
      ),
    );
  }
}
