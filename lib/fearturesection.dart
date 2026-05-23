import 'package:flutter/material.dart';
import 'package:flutterweb/feartureitem.dart';
import 'package:flutterweb/feartureitemupgrade.dart';

class Fearturesection extends StatelessWidget {
  const Fearturesection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final horizontalPadding = screenWidth < 600 ? 20.0 : 80.0;
    final titleSize = screenWidth < 600 ? 35.0 : 40.0;
    final descWidth = screenWidth < 600 ? double.infinity : 600.0;

    final cardWidth = screenWidth < 600
        ? double.infinity
        : screenWidth < 1100
        ? 300.0
        : 250.0;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 40),
      //height: 500,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(
          children: [
            // Text(
            //   "Tại sao bạn nên ăn Chay tại Tute",
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            // ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Tại sao bạn nên ăn Chay tại ",
                    style: TextStyle(
                      //fontSize: 40,
                      fontSize: titleSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),

                  TextSpan(
                    text: "TUTE",
                    style: TextStyle(
                      //fontSize: 40,
                      fontSize: titleSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16),

            SizedBox(
              width: descWidth,
              child: Text(
                "Khám phá những lợi ích về việc ăn chay tại Tute",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ),

            SizedBox(height: 20),

            SizedBox(
              //width: 1300,
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                //alignment: WrapAlignment.center,
                spacing: 15,
                runSpacing: 32,
                children: [
                  SizedBox(
                    width: cardWidth,
                    child: FeartureItemUpgrade(
                      icon: Icons.eco,
                      title: "100% Thuần Chay",
                      desc:
                          "Mọi món ăn đều được làm hoàn toàn từ thực vật, đảm bảo nguyên liệu thuần chay có chất lượng cao nhất.",
                    ),
                  ),

                  SizedBox(
                    width: cardWidth,
                    child: FeartureItemUpgrade(
                      icon: Icons.favorite_border,
                      title: "Lấy sức khoẻ làm trọng tâm",
                      desc:
                          "Bữa ăn giàu dinh dưỡng được thiết kế để tiếp năng lượng cho cơ thể và hỗ trợ lối sống lành mạnh",
                    ),
                  ),

                  SizedBox(
                    width: cardWidth,
                    child: FeartureItemUpgrade(
                      icon: Icons.public,
                      title: "Bền vững",
                      desc:
                          "Tute cam kết giảm thiểu tác động đến môi trường thông qua các hoạt động bền vững.",
                    ),
                  ),

                  SizedBox(
                    width: cardWidth,
                    child: FeartureItemUpgrade(
                      icon: Icons.auto_awesome,
                      title: "Vệ sinh an toàn thực phẩm",
                      desc:
                          "Tute luôn lựa chọn nguyên liệu sạch và có xuất xứ uy tín để đảm bảo sức khoẻ cho khách hàng",
                    ),
                  ),
                ],
              ),
            ),

            // Wrap(
            //   alignment: WrapAlignment.spaceBetween,
            //   spacing: 40,
            //   runSpacing: 40,
            //   children: [
            //     Feartureitem(),
            //     Feartureitem()
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
