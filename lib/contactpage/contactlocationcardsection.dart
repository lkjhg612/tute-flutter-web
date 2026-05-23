import "package:flutter/material.dart";
import "package:flutterweb/contactpage/inforow.dart";
import 'package:url_launcher/url_launcher.dart';

class ContactLocationCard extends StatefulWidget {
  final String title;
  final String address;
  final String phone;
  final String hours;
  final String mapUrl;
  const ContactLocationCard({
    super.key,
    required this.title,
    required this.address,
    required this.phone,
    required this.hours,
    required this.mapUrl,
  });

  @override
  State<ContactLocationCard> createState() => _ContactLocationCardState();
}

class _ContactLocationCardState extends State<ContactLocationCard> {
  bool isHover = false;
  Future<void> openMap(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Không mở được Google Maps");
    }
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      height: 380,
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            isHover = true;
          });
        },

        onExit: (_) {
          setState(() {
            isHover = false;
          });
        },

        child: AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          transform: isHover
              ? Matrix4.translationValues(0, -8, 0)
              : Matrix4.identity(),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: isHover
                ? [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.1),
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ]
                : [],
          ),

          child: Container(
            padding: const EdgeInsets.all(28),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.grey.shade300),
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),

                const SizedBox(height: 24),

                Inforow(icon: Icons.location_on_outlined, text: widget.address),
                Inforow(icon: Icons.phone_outlined, text: widget.phone),
                Inforow(icon: Icons.access_time, text: widget.hours),

               const SizedBox(height: 24),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      openMap(widget.mapUrl);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Xem Chi Tiết",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
