import 'package:flutter/material.dart';
import 'package:flutterweb/menuitem.dart';
import 'package:flutterweb/menuitemupgrade.dart';

class MenuSection extends StatelessWidget {
  const MenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    int crossAxisCount;

    if (screenWidth > 1000) {
      crossAxisCount = 3;
    } else if (screenWidth > 700) {
      crossAxisCount = 2;
    } else {
      crossAxisCount = 1;
    }

    double titleSize;

    if (screenWidth > 900) {
      titleSize = 40;
    } else if (screenWidth > 600) {
      titleSize = 32;
    } else {
      titleSize = 24;
    }

    double horizontalPadding;

    if (screenWidth > 1000) {
      horizontalPadding = 80;
    } else if (screenWidth > 600) {
      horizontalPadding = 40;
    } else {
      horizontalPadding = 16;
    }

    return Container(
      width: double.infinity,
      // height: 500,
      padding: EdgeInsets.symmetric(
        //horizontal: 80,
        horizontal: horizontalPadding,
        vertical: 40,
      ),
      decoration: BoxDecoration(
        //color: Colors.greenAccent.shade100
        //color: Colors.white.withValues(alpha: 0.05),
        gradient: LinearGradient(
          //colors: [Color(0xFF22C55E), Color(0xFF4ADE80), Color(0xFF65A30D)],
          colors: [Color(0xFF6EE7B7),Color(0xFF22C55E)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Column(
        children: [
          Text(
            "Menu Chay Ngon",
            style: TextStyle(
              //fontSize: 40,
              fontSize: titleSize,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          ),

          SizedBox(height: 16),

          SizedBox(
            //width: 600,
            width: screenWidth < 600 ? double.infinity : 600,
            child: Text(
              '100% các món tại TUTE thuần thực vật (không dùng trứng và sữa) nhưng vẫn giữ được hương vị Sài Gòn đặc trưng ^_^',
              style: TextStyle(
                fontSize: 18,
                //fontSize: titleSize,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 20),

          GridView.builder(
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), //không cho cuộn theo khi cuộn trang
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: crossAxisCount,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,

              // mainAxisExtent: screenWidth < 600
              //     ? 360
              //     : screenWidth < 1000
              //     ? 380
              //     : 400,
              mainAxisExtent: screenWidth < 600
                  ? 340
                  : screenWidth < 900
                  ? 360
                  : 370,
            ),

            itemCount: 6,
            itemBuilder: (context, index) {
              final items = [
                // MenuItem(
                //   image: "assets/Comsuonbichachay.jpg",
                //   title: "Cơm tấm sườn bì chả chay",
                //   description:
                //       "Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                //   badge: "Best Seller",
                //   price: "49.000đ",
                // ),
                // MenuItem(
                //   image: "assets/bunchagio.jpg",
                //   title: "Bún Chả Giò Chay",
                //   description:
                //       "Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                //   badge: "Popular",
                //   price: "45.000đ",
                // ),

                // MenuItem(
                //   image: "assets/Comsuon.jpg",
                //   title: "Cơm Sườn bì chay",
                //   description:
                //       "Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                //   badge: "Popular",
                //   price: "39.000đ",
                // ),

                // MenuItem(
                //   image: "assets/hongtratacximuoi.jpg",
                //   title: "Hồng trà tắc xí muội",
                //   description:
                //       "Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                //   badge: "Popular",
                //   price: "25.000đ",
                // ),

                // MenuItem(
                //   image: "assets/banhmibi.jpg",
                //   title: "Bánh mì bì",
                //   description:
                //       "Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                //   badge: "Popular",
                //   price: "20.000đ",
                // ),

                // MenuItem(
                //   image: "assets/banhmisaigon.jpg",
                //   title: "Bánh mì Sài Gòn",
                //   description:
                //       "Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                //   badge: "Popular",
                //   price: "20.000đ",
                // ),
                MenuItemUpgrade(
                  image: "assets/Comsuonbichachay.jpg",
                  title: "Cơm tấm sườn bì chả chay",
                  description:
                      "Chả hấp thơm ngon, Sườn đậm vị, Bì dai dai, mỡ hành beo béo, tóp mỡ giòn tan, đồ chua giòn ngon trên nền gạo tấm hoà quyện với nước mắm vị Sài Gòn đặc trưng... Wao hưởng thôi",
                  badge: "Best Seller",
                  price: "49.000đ",
                ),
                MenuItemUpgrade(
                  image: "assets/bunchagio.jpg",
                  title: "Bún Chả Giò Chay",
                  description:
                      "Chả giò chay giòn rụm, tóp mỡ giòn tan kết hợp với đậu phộng thơm thơm kèm thịt chay trên nền bún tươi và rau sống, tất cả được kết nối bằng nước mắm pha chế riêng, tạo nên một hương vị hoàn hảo",
                  badge: "Popular",
                  price: "45.000đ",
                ),

                MenuItemUpgrade(
                  image: "assets/Comsuon.jpg",
                  title: "Cơm Sườn bì chay",
                  description:
                      "Sườn đậm vị, Bì dai dai, mỡ hành beo béo, tóp mỡ giòn tan, đồ chua giòn giòn, trên nền gạo tấm hoà quyện với nước mắm vị Sài Gòn đặc trưng... Wao hưởng thôi",
                  badge: "Popular",
                  price: "39.000đ",
                ),

                MenuItemUpgrade(
                  image: "assets/hongtratacximuoi.jpg",
                  title: "Hồng trà tắc xí muội",
                  description:
                      "Xí muội mặn mặn, Tắc thơm thơm chua chua hoà quyện với Hồng trà tạo nên một thức uống mang hương vị rất Sài Gòn. Trải nghiệm ngay bạn nhé!",
                  badge: "Popular",
                  price: "25.000đ",
                ),

                MenuItemUpgrade(
                  image: "assets/banhmibi.jpg",
                  title: "Bánh mì bì",
                  description:
                      "Bánh mì bì chứa đựng văn hoá ẩm thực Sài Gòn trong đó với topping gồm bì(chay), đồ chua giòn giòn, một ít tóp mỡ(chay), mỡ hành, dưa leo, và không thể thiếu nước mắm huyền thoại đặc trưng",
                  badge: "Popular",
                  price: "20.000đ",
                ),

                MenuItemUpgrade(
                  image: "assets/banhmisaigon.jpg",
                  title: "Bánh mì Sài Gòn",
                  description:
                      "Bánh mì Sài Gòn mang trong mình là thịt chay tẩm vị xá xíu, đồ chua giòn giòn cùng rau ngò và dưa leo thanh mát, tất cả được kết nối với nhau bằng sốt TUTE đặc biệt. Thưởng thức thôi!",
                  badge: "Popular",
                  price: "20.000đ",
                ),
              ];

              return items[index];
            },
          ),
        ],
      ),
    );
  }
}
