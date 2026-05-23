import 'package:flutter/material.dart';
import 'package:flutterweb/aboutpage/aboutvaluecard.dart';

class AboutValuesSection extends StatelessWidget {
  const AboutValuesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      color: const Color(0xFFEFFDF4),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 60 : 90,
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(text: "Giá trị ",
                style: TextStyle(color: Colors.green),),
                TextSpan(
                  text: "của chúng tôi",
                  
                ),
              ],
            ),
          ),

          

          const SizedBox(height: 20),

          
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Text(
              "Những nguyên tắc cốt lõi này định hướng cho mọi hoạt động của Tute, từ việc lên đơn đến dịch vụ chăm sóc khách hàng.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isMobile ? 17 : 20,
                height: 1.5,
                color: Colors.grey.shade700,
              ),
            ),
          ),

          const SizedBox(height: 70),
          

          Wrap(
            spacing: 28,
            runSpacing: 28,
            alignment: WrapAlignment.start,
            children: const [
              AboutValueCard(
                icon: Icons.favorite_border,
                title: "Sức khoẻ là cốt lõi",
                desc:
                    "Chúng tôi cam kết cung cấp những bữa ăn bổ dưỡng, lành mạnh giúp tiếp thêm sinh lực cho cơ thể và tâm trí của khách hàng.",
              ),

              AboutValueCard(
                icon: Icons.eco_outlined,
                title: "Giá trị bền vững",
                desc:
                    "Mọi quyết định Tute đưa ra đều xem xét đến tác động môi trường, từ khâu tìm nguồn cung ứng đến đóng gói.",
              ),

              AboutValueCard(
                icon: Icons.groups_outlined,
                title: "Cộng đồng ",
                desc:
                    "Tute tin vào việc xây dựng một cộng đồng vững mạnh gồm những cá nhân ý thức về sức khỏe, những người luôn hỗ trợ lẫn nhau.",
              ),

              AboutValueCard(
                icon: Icons.workspace_premium_outlined,
                title: "Nguyên liệu chất lượng",
                desc:
                    "Chỉ những nguyên liệu sạch và thuần chay 100% và có nguồn gốc rõ ràng mới được đưa vào căn bếp của Tute.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
