import 'package:flutter/material.dart';
import 'package:flutterweb/contactpage/contactlocationcardsection.dart';

class ContactLocationSection extends StatelessWidget {
  const ContactLocationSection({super.key});

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
                TextSpan(text: "Địa Chỉ ",style: TextStyle(color: Colors.green),),
                TextSpan(
                  text: "TUTE",
                  
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

           Text(
          "Địa chỉ TUTE ở Thành Phố Hồ Chí Minh.",
          style: TextStyle(
            fontSize: 17,
            height: 1.6,
            color: Colors.grey.shade700,
          ),
        ),

          const SizedBox(height: 70),

          Wrap(
            spacing: 28,
            runSpacing: 28,
            alignment: WrapAlignment.start,
            children: const [
              ContactLocationCard(
                title: "Cơm Tấm Chay TUTE",
                address: "62/14A Nguyễn Thông Phường Nhiêu Lộc",
                phone: "0282129940",
                hours: "Thứ Hai - Thứ Sáu: 7h00 - 5h00, Thứ 7: 7h00 - 1h00",
                mapUrl: "https://maps.app.goo.gl/KYiehk69xaWuCjz39?g_st=ac"
              ),

            
              ContactLocationCard(
                title: "Văn Phòng ",
                address: "62/28 Nguyễn Thông Phường Nhiêu Lộc",
                phone: "0948888389",
                hours: "Thứ Hai - Thứ bảy: 6h30 - 5h00, Chủ Nhật nghỉ",
                mapUrl: "https://maps.app.goo.gl/33Uix7VuVE8XZvCM6?g_st=ac"
              ),

              // ContactLocationCard(
              //   title: "Coming Soon",
              //   address: ".........................................................................",
              //   phone: ".........",
              //   hours: "............................................................................",
              //   mapUrl: "",
              // ),
  

             
            ],
          ),
        ],
      ),
    );
  }
}
