import 'package:flutter/material.dart';
import 'package:flutterweb/aboutpage/aboutingredientsection.dart';
import 'package:flutterweb/aboutpage/about_team_section.dart';
import 'package:flutterweb/aboutpage/aboutsection.dart';
import 'package:flutterweb/aboutpage/aboutvaluesection.dart';
import 'package:flutterweb/aboutpage/heroaboutsectionupgrade.dart';
import 'package:flutterweb/aboutpage/jointjourneysection.dart';
import 'package:flutterweb/aboutpage/storysectionabout.dart';
import 'package:flutterweb/aboutpage/timelinesection.dart';
import 'package:flutterweb/app_drawer.dart';
import 'package:flutterweb/footer.dart';
import 'package:flutterweb/headerblurupgrade.dart';

class AboutContact extends StatefulWidget {
  const AboutContact({super.key});

  @override
  State<AboutContact> createState() => _AboutContactState();
}

class _AboutContactState extends State<AboutContact> {
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
                  // const HeroAboutSection(),
                  const HeroAboutSectionUpgrade(),

                  const AboutStorySection(),

                  const AboutValuesSection(),

                  // const AboutJourneySection(),

                  //const AboutTeamSection(),
                  AboutIngredientSection(),
                  const OurJourneySection(),
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
