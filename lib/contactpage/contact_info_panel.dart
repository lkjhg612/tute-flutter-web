import 'package:flutter/material.dart';
import 'package:flutterweb/contactpage/contact_followbox.dart';
import 'package:flutterweb/contactpage/infor_item.dart';


class ContactInfoPanel extends StatelessWidget {

  const ContactInfoPanel({super.key});

  @override

  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Liên hệ ",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: "TUTE",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
       // Text("liên hệ tute"),


        SizedBox(height: 32),
        
        InfoItem(
          icon: Icons.email_outlined,
          title: "Email",
          lines: ["comtamchaytute@gmail.com", ],
        ),

        InfoItem(
          icon: Icons.phone_outlined,
          title: "Số điện thoại",
          lines: ["028.2212.9940 hoặc 094.8888.389"],
        ),

        InfoItem(
          icon: Icons.location_on_outlined,
          title: "Địa chỉ",
          lines: ["62/14A Nguyễn Thông, Phường Nhiêu Lộc, TPHCM", ],
        ),

        InfoItem(
          icon: Icons.access_time,
          title: "Giờ mở cửa",
          lines: ["Thứ 2- Thứ 6: 7am - 5pm", "Thứ 7: 7am - 1pm"],
        ),

        SizedBox(height: 24),

        FollowBox(),

      ],

    );

  }

}