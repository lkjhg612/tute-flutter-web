import 'package:flutter/material.dart';

class FeartureItemUpgrade extends StatefulWidget {
  final IconData icon;
  final String title;
  final String desc;
  const FeartureItemUpgrade({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
  });

  @override
  State<FeartureItemUpgrade> createState() => _FeartureItemUpgradeState();
}

class _FeartureItemUpgradeState extends State<FeartureItemUpgrade> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 260, //cho khung nó đều nhau
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
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: isHover
                ? Colors.green.withValues(alpha: 0.08)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: isHover
                  ? Colors.green.withValues(alpha: 0.3)
                  : Colors.transparent,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.green.withValues(alpha: 0.15),
                child: Icon(widget.icon, color: Colors.green),
              ),

              SizedBox(height: 16),

              Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),

              SizedBox(height: 8),

              Text(widget.desc, textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
