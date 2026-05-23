import "package:flutter/material.dart";

class HeroSectionContactUpgrade extends StatelessWidget {
  const HeroSectionContactUpgrade({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;
    final isTablet = width >= 700 && width < 1100;
    final isDesktop = width >= 1100;

    final heroHeight = isMobile
        ? 220.0
        : isTablet
        ? 280.0
        : 420.0;

    final fit = isDesktop ? BoxFit.contain : BoxFit.cover;
    //final fit = isDesktop ? BoxFit.fill : BoxFit.cover;

    return Container(
      width: double.infinity,
      height: heroHeight,
      color: const Color(0xFF46BBD0),
      child: Image.asset(
        "assets/eventbanner.png",
         fit: BoxFit.contain,
        //fit: fit,
        alignment: Alignment.center,
      ),
    );
  }
}
