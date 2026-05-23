import 'package:flutter/material.dart';
import 'package:flutterweb/cardtestimonials.dart';
import 'package:url_launcher/url_launcher.dart';

class Testimonials extends StatelessWidget {
  Future<void> openReview() async {
    final url = Uri.parse(
      "https://www.google.com/maps/place/C%C6%A1m+t%E1%BA%A5m+chay+TUTE/@10.7812396,106.6776975,17z/data=!4m17!1m8!3m7!1s0x31752f007d3bc647:0xa8a0c9457057857d!2zQ8ahbSB04bqlbSBjaGF5IFRVVEU!8m2!3d10.7812396!4d106.6802724!10e9!16s%2Fg%2F11vwxmllyt!3m7!1s0x31752f007d3bc647:0xa8a0c9457057857d!8m2!3d10.7812396!4d106.6802724!9m1!1b1!16s%2Fg%2F11vwxmllyt?entry=ttu&g_ep=EgoyMDI2MDUxMy4wIKXMDSoASAFQAw%3D%3D",
    );

    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  const Testimonials({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double titleSize;

    if (screenWidth > 900) {
      titleSize = 40;
    } else if (screenWidth > 600) {
      titleSize = 32;
    } else {
      titleSize = 24;
    }
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Khách hàng ",
                  style: TextStyle(
                    //fontSize: 40,
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text: "Đánh Giá",
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

          SizedBox(height: 20),

          Text(
            "Đừng chỉ tin những gì Tute nói, hãy lắng nghe đánh giá từ những khách hàng hài lòng của TUTE",
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),

          SizedBox(height: 20),

          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: screenWidth < 600 ? 1 : 3,
              crossAxisSpacing: 30,
              mainAxisSpacing: 30,

              mainAxisExtent: screenWidth < 600
                  ? 260
                  : screenWidth < 900
                  ? 240
                  : 220,
            ),

            itemCount: 3,
            itemBuilder: (context, index) {
              final items = [
                CardTestimnonials(
                  review:
                      "Quán núp hẻm dễ thương, hơi nhỏ do là nhà cô ở làm thành xe bánh mì, khuyến khích mn mua về nhen. Một chút dễ thương nhẹ ❤️",
                  name: "Huy Tiêu Quang",
                  role: "Khách hàng đánh giá trên Google Map",
                ),

                CardTestimnonials(
                  review:
                      "Đặt cơm tấm chay cũng khá ngon, nước mắm vừa vị. Mình đặt giao hàng nên cũng không rõ quán dịch vụ hay không gian ra sao. Giá ổn, đóng gói sạch sẽ.",
                  name: "Quỳnh Vy Lê Hoàng",
                  role: "Khách hàng đánh giá trên Google Map",
                ),

                CardTestimnonials(
                  review: "Đồ chay siêu ngon mà giá rẻ quá, hỏi thì a chủ bảo để bếp trong ngõ nên tiết kiệm giá thuê. Sườn non chay thơm nước mắm ngon chủ dễ thương",
                  name: "Hoàng Ngọc Anh",
                  role: "Khách hàng đánh giá trên Google Map",
                ),
              ];

              return items[index];
            },
          ),

          SizedBox(height: 32),

          ElevatedButton.icon(
            onPressed: openReview,

            icon: Icon(Icons.star, color: Colors.white),

            label: Text(
              "Xem tất cả đánh giá",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


	// •	mobile: ~190–210
	// •	tablet: ~210–230
	// •	desktop: ~230–250

// Section
// Height
// Menu
// 340–370
// Testimonials
// 200–240
