import 'package:flutter/material.dart';
import 'package:port/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "\n I am Raffath Anjum \n Flutter Developer\n ",
                style: TextStyle(
                    fontSize: 30,
                    height: 1.5,
                    fontWeight: FontWeight.bold,
                    color: CustomColor.whitePrimary),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                    onPressed: () {}, child: Text("Work with me")),
              ),
            ],
          ),
          Image.asset(
            "assets/pic4.jpg",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
