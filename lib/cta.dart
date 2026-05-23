import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';


class Cta extends StatelessWidget {
  const Cta({super.key});

  Future<void> openOrderLink(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Không mở được link");
    }
  }

  Widget _orderButton(String title, String url) {
    return SizedBox(
      width: 160,
      child: ElevatedButton(
        onPressed: () => openOrderLink(url),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green.shade700,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;

    // double horizontalPadding;

    // if (screenWidth > 900) {
    //   horizontalPadding = 80;
    // } else if (screenWidth > 600) {
    //   horizontalPadding = 40;
    // } else {
    //   horizontalPadding = 20; // mobile
    // }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 40),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF22C55E), Color(0xFF4ADE80), Color(0xFF65A30D)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Đặt món ngay",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 8),

          Text(
            "Hãy đặt trên các nền tảng của Tute nhé",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),

          SizedBox(height: 20),

          Wrap(
            spacing: 24,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: [
              _orderButton("ShopeeFood", "https://shopeefood.vn/u/p6L6MVw"),
              _orderButton("GrabFood", "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN"),
              _orderButton("BeFood", "https://begroup.onelink.me/ZOqn/6r2g5fau"),
              _orderButton("GreenXanh", "https://xanhsmngon.onelink.me/14WJ/5eyg45ak"),
            ],
          ),
        ],
      ),
    );
  }
}
