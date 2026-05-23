import "package:flutter/material.dart";
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialButton extends StatelessWidget {
  final IconData? icon;
  final String url;
  final String? imagePath;

  const SocialButton({
    super.key,
    this.icon,
    this.imagePath,
    required this.url,
  });

  Future<void> openSocial() async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Không mở được link");
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: openSocial,
      borderRadius: BorderRadius.circular(999),

      child: Container(
        width: 56,
        height: 56,
        decoration: const BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),

        child: Center(
          child: imagePath != null
              ? Image.asset(imagePath!, width: 24, height: 24)
              : FaIcon(icon, color: Colors.white, size: 24),
        ),
      ),
    );
  }
}
