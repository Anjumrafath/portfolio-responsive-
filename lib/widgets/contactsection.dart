import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:port/constants/colors.dart';
import 'package:port/constants/size.dart';
import 'package:port/widgets/customtextfield.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          Text(
            "Contact",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          SizedBox(height: 50),
          ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 700,
                maxHeight: 100,
              ),
              child: LayoutBuilder(
                builder: (context, Constraints) {
                  if (Constraints.maxWidth >= kMinDesktopWidth) {
                    return buildnameEmailFieldDesktop();
                  } //else
                  return buildnameEmailFieldMobile();
                },
              )),
          SizedBox(
            height: 15,
          ),

          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              hintText: "Your Message",
              maxLines: 16,
            ),
          ),
          //send button

          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Contact Me"),
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),

          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              Text(
                "My Codelab :",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text(
                "http://surl.li/ssdwi",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildnameEmailFieldDesktop() {
    return Row(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }

  Column buildnameEmailFieldMobile() {
    return Column(
      children: [
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Flexible(
          child: CustomTextField(
            hintText: "Your email",
          ),
        ),
      ],
    );
  }
}
