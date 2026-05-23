import 'package:flutter/material.dart';
import 'package:flutterweb/aboutpage/aboutstateboxingredientsection.dart';

class AboutIngredientSection extends StatelessWidget {
  const AboutIngredientSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final isMobile = width < 800;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 60 : 100,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: isMobile
            ? Column(
                children: [
                  _buildImage(context),
                  const SizedBox(height: 32),
                  _buildContent(),
                ],
              )
            : Row(
                children: [
                  Expanded(child: _buildImage(context)),
                  const SizedBox(width: 80),
                  Expanded(child: _buildContent()),
                ],
              ),
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [
              TextSpan(text: "Nguyên liệu ",
              ),
              TextSpan(
                text: "Sạch",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),

        const SizedBox(height: 20),

        Text(
          
          "☘️TUTE yêu sự Tử Tế của Sài Gòn và tin rằng có thể lan rộng sự kỳ diệu mang tên Sài Gòn Tử Tế thông qua các món ăn mà TUTE đang nấu…",
          style: TextStyle(
            fontSize: 17,
            height: 1.6,
            color: Colors.grey.shade700,
          ),
        ),

        const SizedBox(height: 14),

        Text(
        
          "100% Thuần chay",
          style: TextStyle(
            fontSize: 17,
            height: 1.6,
            color: Colors.grey.shade700,
          ),
        ),

        const SizedBox(height: 30),

        Row(
          children: const [
            Expanded(
              child: StatBox(value: "100%", label: "Thực Vật"),
            ),
            SizedBox(width: 16),
            Expanded(
              child: StatBox(value: "50+", label: "Nguyên liệu Sạch"),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildImage(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final isMobile = width < 700;

    return ClipRRect(
      borderRadius: BorderRadius.circular(24),

      // child: Image.asset(
      //   "assets/comlogo.jpg",
      //   height: 420,
      //   width: double.infinity,
      //   fit: BoxFit.contain,
      // ),
      child: AspectRatio(
        aspectRatio: isMobile ? 4 / 3 : 16 / 10,
        child: Container(
        
          color: const Color(0xFFF5FBEA),
          //color: Colors.white,
          child: Image.asset("assets/comlogo.jpg", fit: BoxFit.contain),
        ),
      ),
    );
  }
}
