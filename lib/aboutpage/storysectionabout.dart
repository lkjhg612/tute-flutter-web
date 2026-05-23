import 'package:flutter/material.dart';

class AboutStorySection extends StatelessWidget {
  const AboutStorySection({super.key});

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildText(),
                  const SizedBox(height: 32),
                  _buildImage(context),
                ],
              )
            : Row(
                children: [
                  Expanded(child: _buildText()),
                  const SizedBox(width: 80),
                  Expanded(child: _buildImage(context)),
                ],
              ),
      ),
    );
  }

  Widget _buildText() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        RichText(
          text: const TextSpan(
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              height: 1.2,
            ),

            children: [
              TextSpan(text: "TUTE ",
              style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: "tin rằng sự tử tế đều có trong mỗi người",
                // style: TextStyle(color: Colors.green),
              ),
            ],
          ),
        ),

        const SizedBox(height: 24),

        // Text(
        //   "TUTE started in 2024 with a simple yet powerful vision: to create delicious, nutritious plant-based meals that everyone can enjoy. Our founder, Emma Green, was inspired by her own journey to veganism and the lack of flavorful, satisfying options available.",
        //   style: TextStyle(
        //     fontSize: 17,
        //     height: 1.6,
        //     color: Colors.grey.shade700,
        //   ),
        // ),

        // const SizedBox(height: 18),
        Text(
          "Với mỗi bữa ăn chay bạn đã tử tế với Cơ Thể bạn, các loài Động Vật Môi Trường",

          style: TextStyle(
            fontSize: 17,
            height: 1.6,
            color: Colors.grey.shade700,
          ),
        ),

        const SizedBox(height: 18),

        Text(
          "Để lan tỏa sự tử tế của bạn, Cơm Tấm Chay TUTE xin trích 2% số tiền trên mỗi đơn hàng để gửi đến bếp ăn từ thiện chùa Bảo Vân, cùng nhau giúp bệnh nhân người thân bệnh nhân BV Ung Bướu HCM có bữa ăn tử tế hơn.",

          style: TextStyle(
            fontSize: 17,
            height: 1.6,
            color: Colors.grey.shade700,
          ),
        ),
      ],
    );
  }

  Widget _buildImage(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.white54.withValues(alpha: 0.18),
            blurRadius: 30,
            offset: const Offset(0, 18),
          ),
        ],
      ),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(
          "assets/Mascot - Chef.png",
          //height: 420,
          height: width < 700 ? 260 : 420,
          width: double.infinity,
          // fit: BoxFit.cover,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
