import 'package:flutter/material.dart';
import 'package:port/pages/style.dart';

import 'package:port/widgets/sitelogo.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, this.onLogoTap, this.onMenuTap});
  final VoidCallback? onLogoTap;
  final VoidCallback? onMenuTap;

  // final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        margin: const EdgeInsets.fromLTRB(40, 5, 20, 5),
        decoration: KHeaderDecoration,
        child: Row(
          children: [
            SiteLogo(
              onTap: onLogoTap,
            ),
            const Spacer(),
            IconButton(
              onPressed: onMenuTap,
              icon: const Icon(Icons.menu),
            ),
          ],
        ));
  }
}
