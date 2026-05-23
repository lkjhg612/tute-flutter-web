import "package:flutter/material.dart";

class AboutJourneySection extends StatelessWidget {
  const AboutJourneySection({super.key});

  final List<Map<String, String>> journeys = const [
    {
      "year": "2019",
      "text":
          "TUTE was founded with a mission to make plant-based eating accessible",
    },

    {
      "year": "2020",
      "text":
          "Opened our first location and served 10,000 meals in the first year",
    },

    {
      "year": "2022",
      "text":
          "Expanded to three locations and won 'Best Vegan Restaurant' award",
    },

    {
      "year": "2024",
      "text":
          "Launched our meal delivery service, reaching customers across the region",
    },

    {
      "year": "2026",
      "text":
          "Serving 100,000+ customers annually and growing our community every day",
    },
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 700;

    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 60 : 90,
      ),

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
                TextSpan(text: "Our "),
                TextSpan(
                  text: "Journey",
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          Text(
            "Key milestones that shaped TUTE into what it is today.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 16 : 18,
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 60),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              children: journeys.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 36),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: isMobile ? 70 : 86,
                        height: isMobile ? 70 : 86,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),

                        alignment: Alignment.center,
                        child: Text(
                          item["year"]!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: isMobile ? 18 : 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      SizedBox(width: isMobile ? 20 : 32),

                      Expanded(
                        child: Text(
                          item["text"]!,
                          style: TextStyle(
                            fontSize: isMobile ? 16 : 18,
                            height: 1.5,
                            color: Colors.blueGrey.shade800,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
