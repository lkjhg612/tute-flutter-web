import "package:flutter/material.dart";
import 'package:flutterweb/contactpage/socialbutton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FollowBox extends StatelessWidget {
  const FollowBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(26),
      decoration: BoxDecoration(
        color: Color(0xFFEFFDF4),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Kết nối với TUTE nhen",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),

          SizedBox(height: 22),

          Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: WrapAlignment.start,
            children: [
              SocialButton(
                icon: FontAwesomeIcons.tiktok,
                url:
                    "https://www.tiktok.com/@comtamchaytute?is_from_webapp=1&sender_device=pc",
              ),

              SizedBox(width: 16),

              SocialButton(
                icon: FontAwesomeIcons.facebookF,
                url: "https://www.facebook.com/share/1BvjabNx1o/",
              ),

              SizedBox(width: 16),

              SocialButton(
                icon: FontAwesomeIcons.instagram,
                url:
                    "https://www.instagram.com/comtamchay.tute?igsh=OXd2aWMyZjJvNm0x",
              ),

              SizedBox(width: 16),

              SocialButton(
                imagePath: "assets/zalologo.png",
                url: "https://zalo.me/783416378582964876",
              ),

              SizedBox(width: 16),

              SocialButton(
                icon: FontAwesomeIcons.youtube,
                url: "https://youtube.com/@comtamchaytute",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
