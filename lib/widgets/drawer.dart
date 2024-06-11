import 'package:flutter/material.dart';
import 'package:port/constants/navitems.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({super.key, required this.onNavItemTap});
  final Function(int) onNavItemTap;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 122, 166, 163),
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.close,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 30,
              ),
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              onTap: () {
                onNavItemTap(i);
              },
              leading: Icon(navIcons[i]),
              title: Text(navTitles[i]),
            ),
        ],
      ),
    );
  }
}
