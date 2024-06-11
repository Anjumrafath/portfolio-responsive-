import 'package:flutter/material.dart';

import 'package:port/constants/colors.dart';
import 'package:port/constants/navitems.dart';
import 'package:port/pages/style.dart';
import 'package:port/widgets/sitelogo.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onnavMenuTap});
  final Function(int) onnavMenuTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.maxFinite,
      decoration: KHeaderDecoration,
      child: Row(
        children: [
          SiteLogo(
            onTap: () {},
          ),
          const Spacer(),
          for (int i = 0; i < navTitles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(
                onPressed: () {
                  onnavMenuTap(i);
                },
                child: Text(
                  navTitles[i],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.whitePrimary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
