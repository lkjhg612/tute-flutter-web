import "package:flutter/material.dart";

class AboutTeamCard extends StatefulWidget {
  final String name;
  final String role;
  final String desc;

  const AboutTeamCard({
    super.key,
    required this.name,
    required this.role,
    required this.desc,
  });

  @override
  State<AboutTeamCard> createState() => _AboutTeamCardState();
}

class _AboutTeamCardState extends State<AboutTeamCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHover = true),
      onExit: (_) => setState(() => isHover = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: isHover
            ? Matrix4.translationValues(0, -8, 0)
            : Matrix4.identity(),
       width: 330,
        padding: const EdgeInsets.all(36),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(color: Colors.grey.shade300),
          boxShadow: isHover
              ? [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.12),
                    blurRadius: 24,
                    offset: const Offset(0, 12),
                  )
                ]
              : [],
        ),
        child: Column(
          children: [
            Container(
              width: 130,
              height: 130,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [Color(0xFF22C55E), Color(0xFF84CC16)],
                ),
              ),
            ),
            const SizedBox(height: 28),
            Text(
              widget.name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              widget.role,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 20),
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
    );
  }
}