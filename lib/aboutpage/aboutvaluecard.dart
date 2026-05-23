import "package:flutter/material.dart";

class AboutValueCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String desc;

  const AboutValueCard({
    super.key,
    required this.icon,
    required this.title,
    required this.desc,
  });

  @override
  State<AboutValueCard> createState() => _AboutValueCardState();
}

class _AboutValueCardState extends State<AboutValueCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      height: 350,

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
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 38),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 36,
                  backgroundColor: Colors.green.withValues(alpha: 0.15),
                  child: Icon(widget.icon, color: Colors.green, size: 36),
                ),

                const SizedBox(height: 28),

                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 18),

                Text(
                  widget.desc,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    height: 1.45,
                    color: Colors.grey.shade700,
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
