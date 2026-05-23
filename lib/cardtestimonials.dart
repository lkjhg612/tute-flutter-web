import 'package:flutter/material.dart';

class CardTestimnonials extends StatelessWidget {
  final String review;
  final String name;
  final String role;
  const CardTestimnonials({
    super.key,
    required this.review,
    required this.name,
    required this.role,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade100),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: 4,
            children: List.generate(
              5,
              (index) => Icon(Icons.star, color: Colors.amber, size: 18),
            ),
          ),

          SizedBox(height: 12),

          Text(
            review,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey[700]),
          ),

          SizedBox(height: 20),

          Text(
            name,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),

          Text(
            role,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}





// Container
//  └ Padding
//      └ Column
//          ├ Row (stars)
//          ├ Text (review)
//          ├ SizedBox
//          ├ Text (name)
//          └ Text (role)