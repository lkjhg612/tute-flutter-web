import "package:flutter/material.dart";


import 'menu_downloader.dart';

class CtaMenu extends StatelessWidget {
  const CtaMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isMobile = screenWidth < 600;
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
            "Muốn xem Menu đầy đủ của Tute?",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          SizedBox(height: 8),

          Text(
            "Hãy Tải về Menu đầy đủ của Tute để xem đầy đủ hơn",
            textAlign: isMobile ? TextAlign.center : TextAlign.left,
            style: TextStyle(fontSize: 18, color: Colors.black54),
          ),

          SizedBox(height: 16),

          ElevatedButton(
            onPressed: downloadMenu,
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF16A34A),
              elevation: 4,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "Tải về Menu",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
