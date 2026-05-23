import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class OrderNowDropdown extends StatelessWidget {
  const OrderNowDropdown({super.key});

  Future<void> openOrderLink(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Không mở được link");
    }
  }

  PopupMenuItem<String> _orderItem(
    String value,
    String text,
    String imagePath,
  ) {
    return PopupMenuItem<String>(
      value: value,
      height: 46,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            //Icon(icon, color: Colors.green, size: 20),
            child: Image.asset(imagePath, width: 22, height: 22, fit: BoxFit.cover,),
          ),
          const SizedBox(width: 12),
          Text(
            text,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      tooltip: "Order Now",
      offset: const Offset(0, 40),
      color: Colors.white.withValues(alpha: 0.95),
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
      onSelected: (value) {
        final Map<String, String> links = {
          "Shopee": "https://shopeefood.vn/u/p6L6MVw",
          "Grab":
              "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
          "Be": "https://begroup.onelink.me/ZOqn/6r2g5fau",
          "Green SM": "https://xanhsmngon.onelink.me/14WJ/5eyg45ak",
        };
        openOrderLink(links[value]!);
      },

      itemBuilder: (context) => [
        // PopupMenuItem(value: "Shopee", child: Text("ShopeeFood")),
        // PopupMenuItem(value: "Grab", child: Text("GrabFood")),
        // PopupMenuItem(value: "Be", child: Text("BeFood")),
        // PopupMenuItem(value: "Green SM", child: Text("GreenXanh")),
        _orderItem(
          "Shopee",
          "ShopeeFood",
          "assets/shopeelogo.png",
        ), //Icons.delivery_dining
        const PopupMenuDivider(height: 1),
        _orderItem(
          "Grab",
          "GrabFood",
          "assets/grablogo.jpg",
        ), //Icons.two_wheeler
        const PopupMenuDivider(height: 1),
        _orderItem(
          "Be",
          "BeFood",
          "assets/belogo.jpg",
        ), //Icons.local_shipping_outlined
        const PopupMenuDivider(height: 1),
        _orderItem(
          "Green SM",
          "Green SM",
          "assets/greensmlogo.png",
        ), // Icons.eco_outlined
      ],
      child: ElevatedButton(
        onPressed: null,
        style: ElevatedButton.styleFrom(
          disabledBackgroundColor: Colors.greenAccent.shade700,
          elevation: 4,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          "Đặt Ngay",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
