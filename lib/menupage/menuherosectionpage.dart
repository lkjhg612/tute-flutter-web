import 'package:flutter/material.dart';

class HeroSectionMenu extends StatelessWidget {
  const HeroSectionMenu({super.key});
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;
    final isTablet = width >= 700 && width < 1100;

    final heroHeight = isMobile
        ? 280.0
        : isTablet
          ? 320.0
          : 360.0;

    final titleSize = isMobile
        ? 46.0
        : isTablet
          ? 56.0
          : 64.0;

    final descSize = isMobile
        ? 18.0
        : isTablet
          ? 19.0
          : 20.0;

    final descMaxWidth = isMobile ? 340.0 : 650.0;

    return Container(
      width: double.infinity,
      height: heroHeight,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF22C55E), Color(0xFF65A30D)],
        ),
      ),

      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: descMaxWidth),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Menu Chay Ngon",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: 1.1,
                ),
              ),

              const SizedBox(height: 24),

              Text(
                "Khám phá toàn bộ lựa chọn các món ăn thuần chay thơm ngon của chúng tôi, tất cả đều được làm từ các nguyên liệu thuần chay.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: descSize,
                  color: Colors.white,
                  height: 1.45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// mobile: thấp hơn, chữ nhỏ hơn, desc hẹp hơn
// tablet: trung bình
// desktop: cao hơn, chữ lớn hơn