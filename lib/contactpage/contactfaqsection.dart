import 'package:flutter/material.dart';

class ContactFaqSection extends StatelessWidget {
  const ContactFaqSection({super.key});

  final List<Map<String, String>> faqs = const [
    {
      "question": "Ở đây Tute có hỗ trợ giao hàng không",
      "answer":
          "Vâng! Tute có hỗ trợ giao hàng tận nơi nếu khách đặt hàng qua các mạng xã hội của quán đặt biệt là các đơn hàng lớn",
    },
    {
      "question": "Có Phải Tute là quán 100% thuần chay không?",
      "answer":
          "Vâng! Mỗi nguyên liệu mà Tute lựa chọn là 100% thuần chay không có yếu tố động vật",
    },
    {
      "question": "Tute bán trên các nền tảng nào?",
      "answer":
          "Tute đang được bán chủ yếu trên các nền tảng Shopeefood, Grabfood, Befood và GreenSM. Ngoài ra nếu khách có nhu cầu ăn tại chỗ thì Tute vẫn phục vụ bình thường",
    },
    // {
    //   "question": "Do you accommodate dietary restrictions?",
    //   "answer":
    //       "We have gluten-free, nut-free, and soy-free options available. Please let our staff know about any allergies when ordering.",
    // },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 60 : 90,

        // horizontal: 80,
        // vertical: 90
      ),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(
                  text: "Các câu hỏi ",
                  style: TextStyle(color: Colors.green),
                ),
                TextSpan(text: "thường gặp"),
              ],
            ),
          ),

          const SizedBox(height: 56),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              children: faqs.map((faq) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 24),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(isMobile ? 22 : 28),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.grey.shade300),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          faq["question"]!,
                          style: TextStyle(
                            fontSize: isMobile ? 18 : 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          faq["answer"]!,
                          style: TextStyle(
                            fontSize: isMobile ? 15 : 17,
                            height: 1.5,
                            color: Colors.blueGrey.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
