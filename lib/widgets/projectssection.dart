import 'package:flutter/material.dart';
import 'package:port/constants/colors.dart';
import 'package:port/utils/projectutils.dart';
import 'package:port/widgets/projectcard.dart';

class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //workproject title
          Text("Work Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              )),
          SizedBox(
            height: 50,
          ),
          //work project cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 800),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < workProjectUtils.length; i++)
                  ProjectCard(
                    project: workProjectUtils[i],
                  ),
              ],
            ),
          ),
          SizedBox(height: 80),
          //hobbyproject title
          Text("Hobby Projects",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary,
              )),
          SizedBox(
            height: 50,
          ),
          //work project cards
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCard(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
