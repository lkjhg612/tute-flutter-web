import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String badge;
  final String price;

  const MenuItem({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.badge,
    required this.price
    });

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    double titleSize = screenWidth < 600 ? 13 : 14;
    double priceSize = screenWidth < 600 ? 13 : 14;
    double descSize = screenWidth < 600 ? 12 : 13;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),

                child: Image.asset(
                  //"assets/Comsuonbichachay.jpg",
                  image,
                  //height: 200, //giởi hạn ảnh thành 200px
                  height: 240,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              // Image.asset("assets/Comsuonbichachay.jpg"),

              // Badge(
              //   label: Text(
              //     "Best Seller",
              //     style: TextStyle(
              //       color: Colors.white
              //     )
              //     ),
              //   backgroundColor: Colors.green,
              // )
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                 
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    //"Best Seller",
                    badge,
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      //"Cơm tấm sườn bì chả chay",
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //fontSize: 14,
                        fontSize: titleSize
                      ),
                    ),
                    Text(
                      //"49.000đ",
                      price,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //fontSize: 14
                        fontSize: priceSize
                        ),
                    ),
                  ],
                ),

                SizedBox(height: 8),

                Text(
                  //"Colorful mix of quinoa, roasted vegetables, and tahini dressing",
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: descSize
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
// lỗi overflow và hình kéo theo khi co dãn do grid item height nhỏ hơn nội dung bên trong