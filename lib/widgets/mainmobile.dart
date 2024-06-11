import 'package:flutter/material.dart';
import 'package:port/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/pic4.jpg",
              width: screenWidth,
            ),
          ),
          SizedBox(
            height: 30,
          ),

          //intro text
          Text(
            "\n I am Raffath Anjum \n Flutter Developer ",
            style: TextStyle(
                fontSize: 24,
                height: 1.5,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 127, 127, 130)),
          ),
          SizedBox(height: 15),
          SizedBox(
            width: 190,
            child:
                ElevatedButton(onPressed: () {}, child: Text("Work with me")),
          ),
        ],
      ),
    );
  }
}
