import "package:flutter/material.dart";
import "package:flutterweb/aboutpage/aboutpage.dart";
import "package:flutterweb/contactpage/contactpage.dart";
import "package:flutterweb/cta.dart";
import "package:flutterweb/footer.dart";
import "package:flutterweb/headerblurupgrade.dart";
import "package:flutterweb/menupage/menupage.dart";
import "package:flutterweb/testimonials.dart";
import "package:flutterweb/fearturesection.dart";
import "package:flutterweb/header.dart";
import "package:flutterweb/herosection.dart";
import "package:flutterweb/menusection.dart";
import "herosection_responsive.dart";

import 'package:flutterweb/app_drawer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final scaffolKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffolKey,
      endDrawer: AppDrawer(),
      body: SafeArea(
        bottom: false, //tránh khoảng trắng ở dưới
        left: false,
        right: false,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 85),
                  const HerosectionResponsive(),
                  const Fearturesection(),
                  const MenuSection(),
                  const Testimonials(),
                  const Cta(),
                  const Footer(),
                ],
              ),
            ),
            //header fixed
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              //child: Header(scaffoldKey: scaffolKey),
              child: HeaderBlur(scaffoldKey: scaffolKey),
            ),
          ],
        ),
      ),
    );
  }
}
