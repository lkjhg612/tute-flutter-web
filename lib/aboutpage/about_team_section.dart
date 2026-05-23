import "package:flutter/material.dart";
import "package:flutterweb/aboutpage/about_team_card.dart";

class AboutTeamSection extends StatelessWidget {
  const AboutTeamSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;
    return Container(
      width: double.infinity,
      color: const Color(0xFFF0FDF4),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 90),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              children: [
                TextSpan(text: "Meet Our"),
                TextSpan(
                  text: " Teams",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),

           const SizedBox(height: 20),

          Text(
            "The passionate individuals behind your favorite plant-based meals.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 16 : 18,
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 40),
          Wrap(
            spacing: 32,
            runSpacing: 32,
            alignment: WrapAlignment.start,
            children: const [
              AboutTeamCard(
                name: "Emma Green",
                role: "Founder & Head Chef",
                desc:
                    "With 15 years of culinary experience, Emma brings creativity and passion to every dish.",
              ),
              AboutTeamCard(
                name: "Marcus Stone",
                role: "Nutrition Expert",
                desc:
                    "Marcus ensures every meal is perfectly balanced and packed with essential nutrients.",
              ),
              AboutTeamCard(
                name: "Sofia Martinez",
                role: "Sustainability Director",
                desc:
                    "Sofia leads our efforts in creating a more sustainable and eco-friendly operation.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
