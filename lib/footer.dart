import "package:flutter/material.dart";

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    double horizontalPadding;

    if (screenWidth > 900) {
      horizontalPadding = 80;
    } else if (screenWidth > 600) {
      horizontalPadding = 40;
    } else {
      horizontalPadding = 20; // mobile
    }

    Widget buildFooterColumn(String title, List<String> items) {
      return Column(
        // crossAxisAlignment: isMobile
        //     ? CrossAxisAlignment.center
        //     : CrossAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 12),

          ...items.map(
            (item) => Padding(
              padding: EdgeInsetsGeometry.only(bottom: 8),
              child: Text(item, style: TextStyle(color: Colors.white70)),
            ),
          ),
        ],
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: 60,
      ),
      color: Color(0xFF0F172A),

      child: Column(
        children: [
          if (isMobile)
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "TUTE",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),

                    SizedBox(
                      width: 250,
                      child: Text(
                        "Cơm tấm chay TUTE mong muốn mang đến bạn một trải nghiệm ăn chay gần gũi, tử tế và Sài Gòn nhất.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                buildFooterColumn("Menu", [
                  "Hương Vị Sài Gòn",
                  "Hương Vị Sài Gòn Tiện Lợi",
                  "Combo Sài Gòn Tiết Kiệm",
                  "Ăn Vặt Sài Gòn",
                ]),
                SizedBox(height: 20),

                buildFooterColumn("Quán", [
                  "Về chúng tôi",
                  "Câu chuyện của chúng tôi",
                  "Mục Tiêu",
                  "Liên hệ",
                ]),
                SizedBox(height: 20),

                buildFooterColumn("Theo dõi", [
                  "Instagram",
                  "Facebook",
                  "Youtube",
                  "TikTok",
                ]),
              ],
            )
          else
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "TUTE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      SizedBox(height: 10),

                      SizedBox(
                        width: 220,
                        child: Text(
                          "Cơm tấm chay TUTE mong muốn mang đến bạn một trải nghiệm ăn chay gần gũi, tử tế và Sài Gòn nhất.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white70,
                            //fontWeight: FontWeight.bold,
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      buildFooterColumn("Menu", [
                        "Hương Vị Sài Gòn",
                        "Hương Vị Sài Gòn Tiện Lợi",
                        "Combo Sài Gòn Tiết Kiệm",
                        "Ăn Vặt Sài Gòn",
                      ]),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      buildFooterColumn("Quán", [
                        "Về chúng tôi",
                        "Câu chuyện của chúng tôi",
                        "Mục Tiêu",
                        "Liên hệ",
                      ]),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      buildFooterColumn("Theo dõi", [
                        "Instagram",
                        "Facebook",
                        "Youtube",
                        "TikTok",
                      ]),
                    ],
                  ),
                ),
              ],
            ),

          SizedBox(height: 40),

          Divider(color: Colors.white24),

          SizedBox(height: 20),

          Text(
            "© 2026 Tute. All rights reserved.",
            style: TextStyle(color: Colors.white54),
          ),
        ],
      ),
    );
  }
}
