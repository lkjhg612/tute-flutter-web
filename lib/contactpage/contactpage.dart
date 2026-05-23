import 'package:flutter/material.dart';
import 'package:flutterweb/app_drawer.dart';
import 'package:flutterweb/contactpage/contact_content_section.dart';
import 'package:flutterweb/contactpage/contactfaqsection.dart';
import 'package:flutterweb/contactpage/contactlocationssection.dart';
import 'package:flutterweb/contactpage/herocontactsection.dart';
import 'package:flutterweb/contactpage/herosectioncontactupgrade.dart';
import 'package:flutterweb/footer.dart';
import 'package:flutterweb/headerblurupgrade.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: AppDrawer(),

      body: SafeArea(
        bottom: false,
        left: false,
        right: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 82),
                  //const HeroContactSection(),
                  const HeroSectionContactUpgrade(),
                  const ContactContentSection(),
                  const ContactLocationSection(),
                  const ContactFaqSection(),
                  const Footer(),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: HeaderBlur(scaffoldKey: scaffoldKey),
            ),
          ],
        ),
      ),
    );
  }
}
