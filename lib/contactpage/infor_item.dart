import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> lines;
  const InfoItem({
    super.key,
    required this.icon,
    required this.title,
    required this.lines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFFDDFBE7),
            child: Icon(icon, color: Colors.green, size: 28),
          ),

          SizedBox(width: 20),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                ...lines.map(
                  (line) => Text(
                    line,
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.45,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
