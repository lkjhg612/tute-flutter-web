import 'package:flutter/material.dart';

class MenuItemUpgrade extends StatefulWidget {
  final String image;
  final String title;
  final String description;
  final String badge;
  final String price;
   final String? salePrice;
  const MenuItemUpgrade({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.badge,
    required this.price,
    this.salePrice
  });

  @override
  State<MenuItemUpgrade> createState() => _MenuItemUpgradeState();
}

class _MenuItemUpgradeState extends State<MenuItemUpgrade> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double titleSize = screenWidth < 600 ? 13 : 14;
    double priceSize = screenWidth < 600 ? 13 : 14;
    double descSize = screenWidth < 600 ? 12 : 13;
    return MouseRegion(
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

        // transform: isHover
        //   ? (Matrix4.identity()..translate(0,-8))
        //   : Matrix4.identity(),
        // transform: isHover
        //     ? (Matrix4.identity()
        //         ..translate(0, -8)
        //         ..scale(1.02))
        //     : Matrix4.identity(),
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

        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              child: Stack(
                children: [
                  AnimatedScale(
                    scale: isHover ? 1.05 : 1.0,
                    duration: Duration(milliseconds: 200),
                    child: Image.asset(
                      widget.image,
                      height: 240,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),

                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    color: isHover
                        ? Colors.black.withValues(alpha: 0.1)
                        : Colors.transparent,
                  ),

                  Positioned(
                    top: 12,
                    right: 12,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        //"Best Seller",
                        widget.badge,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   //"Cơm tấm sườn bì chả chay",
                      //   widget.title,
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     //fontSize: 14,
                      //     fontSize: titleSize,
                      //   ),
                      // ),
                      // Text(
                      //   //"49.000đ",
                      //   widget.price,
                      //   maxLines: 1,
                      //   overflow: TextOverflow.ellipsis,
                      //   style: TextStyle(
                      //     fontWeight: FontWeight.bold,
                      //     //fontSize: 14
                      //     fontSize: priceSize,
                      //   ),
                      // ),

                      Expanded(
                        child: Text(
                          widget.title,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: titleSize,
                          ),
                        ),
                        ),
                         const SizedBox(width: 8),
                        Text(
                          widget.price,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: priceSize
                          )
                        ),
                    ],
                  ),

                  SizedBox(height: 8),

                  Text(
                    //"Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                    widget.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: descSize),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
