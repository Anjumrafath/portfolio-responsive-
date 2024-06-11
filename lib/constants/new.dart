import 'package:flutter/material.dart';

class New extends StatelessWidget {
  const New({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.home, color: Colors.black),
          title: Text("Home",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        ListTile(
          leading: Icon(Icons.handyman_outlined, color: Colors.black),
          title: Text("Skills",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        ListTile(
          leading: Icon(Icons.apps, color: Colors.black),
          title: Text("Project",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
        ),
        ListTile(
            leading: Icon(Icons.web, color: Colors.black),
            title: Text("Blog",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ))),
        ListTile(
            leading: Icon(Icons.quick_contacts_mail, color: Colors.black),
            title: Text("Contact",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ))),
      ],
    );
  }
}
