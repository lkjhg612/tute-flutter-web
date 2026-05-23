import "package:flutter/material.dart";

class Feartureitem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  const Feartureitem({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 220,
      child: Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Colors.green),
        ),

        SizedBox(height: 16),

        Text(
          title,
          style: TextStyle(
            fontSize: 18, 
            fontWeight: FontWeight.bold
            ),
        ),

        SizedBox(height: 8),

        SizedBox(
          width: 260,// giới hạn độ rộng là 260 px để căn chữ giữa nó xuống hàng
          child: Text(
            description,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    )
    );

    
  }
}
