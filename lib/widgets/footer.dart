import 'package:flutter/material.dart';
import 'package:port/constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        width: double.maxFinite,
        alignment: Alignment.center,
        child: Text(
          "Rafath Anjum ",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: CustomColor.whitePrimary),
        ));
  }
}
