import 'package:flutter/material.dart';
import 'package:port/constants/colors.dart';
import 'package:port/constants/size.dart';
import 'package:port/widgets/contactsection.dart';
import 'package:port/widgets/customtextfield.dart';
import 'package:port/widgets/desktopskills.dart';
import 'package:port/widgets/drawer.dart';
import 'package:port/widgets/footer.dart';
import 'package:port/widgets/headerdesktop.dart';
import 'package:port/widgets/headermobile.dart';
import 'package:port/widgets/maindesktop.dart';
import 'package:port/widgets/mainmobile.dart';
import 'package:port/widgets/moblieskills.dart';
import 'package:port/widgets/projectssection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //late GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: Color.fromARGB(255, 149, 186, 179),
        //drawer: DrawerW(
        //  onNavItemTap: (int navIndex) {

        //  },
        //  ),
        endDrawer: constraints.maxWidth >= kMinDesktopWidth
            ? null
            : DrawerW(onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                scrollToSection(navIndex);
              }),
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(key: navbarKeys.first),

              //header

              //main

              if (constraints.maxWidth >= kMinDesktopWidth)
                HeaderDesktop(
                  onnavMenuTap: (int navIndex) {
                    //call function
                  },
                )
              else
                //HeaderMobile(
                //scaffoldKey.currentState?.openEndDrawer();
                //   ),
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              // MainDesktop(),

              if (constraints.maxWidth >= kMinDesktopWidth)
                MainDesktop()
              else
                MainMobile(),
              //skills heading

              Container(
                key: navbarKeys[1],
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                color: CustomColor.bgLight1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    Text("What I can do",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary,
                        )),
                  ],
                ),
              ),
              SizedBox(height: 50),
              //Desktop and mobile skills section
              if (constraints.maxWidth >= kMedDesktopWidth)
                DesktopSkills()
              else
                MobileSkills(),
              SizedBox(height: 30),
              //projects
              ProjectSection(key: navbarKeys[2]),
              SizedBox(
                height: 30,
              ),
              //contact
              ContactSection(key: navbarKeys[3]),
              SizedBox(height: 30),
              //footer
              Footer(),
            ],
          ),
        ),
      );
    });
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open page

      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
