import 'package:flutter/material.dart';

class Inforow extends StatelessWidget {
  final IconData icon;
  final String text;
  const Inforow({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.blueGrey, size: 22),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 16,
                height: 1.4,
                color: Colors.blueGrey.shade700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
