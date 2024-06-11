import 'package:flutter/material.dart';
import 'package:port/constants/colors.dart';
import 'package:port/utils/projectutils.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.project});
  final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //image
          Image.asset(
            project.image,
            height: 180,
            width: 260,
            fit: BoxFit.cover,
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              project.title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          //subtitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              project.subtitle,
              style: TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          //footer

          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                Text(
                  "Avaiable on Multiplatform",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                Spacer(),
                if (project.gitLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                        onTap: () {
                          //
                        },
                        child: Image.asset("assets/fl.jpg", width: 19)),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
