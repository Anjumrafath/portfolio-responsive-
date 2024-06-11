import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text("Anjum",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
            color: Colors.black,
          )),
    );
  }
}
