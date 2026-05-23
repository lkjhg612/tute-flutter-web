import "package:flutter/material.dart";
import "package:flutterweb/ordernowdropdown.dart";

class HerosectionResponsive extends StatelessWidget {
  const HerosectionResponsive({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;

        final isDesktop = width >= 1024;
        final isTablet = width >= 768 && width < 1024;
        final isMobile = width < 768; //breakpoitnlayer

        final titleSize = isMobile ? 32.0 : 48.0;
        final descSize = isMobile ? 16.0 : 18.0;
        final horizontalPadding = isMobile ? 20.0 : 40.0;
        final sectionSpacing = isMobile ? 20.0 : 30.0;

        final double imageBoxSize = isMobile ? 300 : 420;
        final double outerRadius = imageBoxSize * 0.18; // ~ bo mềm
        final double innerRadius = imageBoxSize * 0.10;

        final double boxSize = isMobile ? 340 : 450;

        // leftContent
        Widget leftContent = Padding(
          padding: EdgeInsetsGeometry.symmetric(
            //horizontal: 40
            horizontal: horizontalPadding, //responsive
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),

                decoration: BoxDecoration(
                  color: Colors.greenAccent.shade100,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Row(
                  mainAxisSize: MainAxisSize
                      .min, //Để badge ôm sát nội dung, không bị giãn ngang.
                  children: [
                    Icon(Icons.eco, size: 16, color: Colors.green),
                    Text(
                      "100% Thuần Chay",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ),
              //SizedBox(height: 40),
              SizedBox(height: sectionSpacing), //reponsive

              RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Hương Vị Sài Gòn ",
                  style: TextStyle(
                    //fontSize: 40,
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                TextSpan(
                  text: "Tử Tế",
                  style: TextStyle(
                    //fontSize: 40,
                    fontSize: titleSize,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),

              
              //SizedBox(height: 20),
              SizedBox(height: sectionSpacing),

              Text(
                "Cơm tấm chay TUTE mong muốn mang đến bạn một trải nghiệm ăn chay gần gũi, tử tế và Sài Gòn nhất.",
                style: TextStyle(
                  //fontSize: 18,
                  fontSize: descSize,
                  color: Colors.black54,
                ),
              ),

              //SizedBox(height: 20),
              SizedBox(height: sectionSpacing), //responsive

              Row(
                children: [
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   style: ElevatedButton.styleFrom(
                  //     backgroundColor: Colors.greenAccent.shade700,
                  //     padding: const EdgeInsets.symmetric(
                  //       horizontal: 24,
                  //       vertical: 16,
                  //     ),
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  //   child: const Text(
                  //     "Order now",
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  // ),
                  const OrderNowDropdown(),

                  //const SizedBox(width: 20),
                  SizedBox(width: sectionSpacing), //responsive

                  ElevatedButton(
                    onPressed: () {
                       Navigator.pushNamed(context, '/menu');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent.shade700,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      "Xem Menu",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

              // SizedBox(height: 30),
              SizedBox(height: sectionSpacing), //responsive

              Wrap(// từng là Row
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "+6000",
                        style: TextStyle(
                          //fontSize: 30,
                          fontSize: descSize, //responsive
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Khách hàng",
                        style: TextStyle(
                          // fontSize: 20,
                          fontSize: descSize, //responsive
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  // SizedBox(width: 12),
                  SizedBox(width: sectionSpacing), //responsive

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "4.9/5",
                        style: TextStyle(
                          //fontSize: 30,
                          fontSize: descSize, //responsive
                          fontWeight: FontWeight.w600,
                          color: Colors.green,
                        ),
                      ),
                      Text(
                        "Review",
                        style: TextStyle(
                          //fontSize: 20,
                          fontSize: descSize, //responsive
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),

                  //SizedBox(width: 12),
                  SizedBox(width: sectionSpacing), //responsive

                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     Text(
                  //       "50+",
                  //       style: TextStyle(
                  //         // fontSize: 30,
                  //         fontSize: descSize, //responsive
                  //         fontWeight: FontWeight.w600,
                  //         color: Colors.green,
                  //       ),
                  //     ),
                  //     Text(
                  //       "Menu Items",
                  //       style: TextStyle(
                  //         //fontSize: 20,
                  //         fontSize: descSize, //responsive
                  //         fontWeight: FontWeight.w600,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ); //leftContent

        //RightContent

        // Widget rightContent = Stack(
        //   alignment: Alignment.center,
        //   children: [
        //     Transform.rotate(
        //       angle: 0.08,
        //       child: Container(
        //         // width: 420,
        //         //height: 420,
        //         width: isMobile ? 300 : 420, //responsive
        //         height: isMobile ? 300 : 420, // responsive
        //         decoration: BoxDecoration(
        //           color: Colors.greenAccent.shade100,
        //           borderRadius: BorderRadius.circular(60),
        //         ),

        //           // child: FractionallySizedBox(
        //           //   widthFactor: 0.82,
        //           //   heightFactor: 0.82,
        //           //   child: ClipRRect(
        //           //     borderRadius: BorderRadius.circular(32),
        //           //     child: Image.asset(
        //           //       "assets/Comsuon.jpg",
        //           //       fit: BoxFit.cover,
        //           //     ),
        //           //   ),
        //           // ),

        //       ),
        //     ),

        //     FractionallySizedBox(
        //       widthFactor: 0.82,
        //       heightFactor: 0.82,
        //       child: ClipRRect(
        //         borderRadius: BorderRadius.circular(32),
        //         child: Image.asset(
        //           "assets/Comsuon.jpg",
        //           fit: BoxFit.cover
        //         ),
        //       ),
        //     )
        //   ],
        // ); // RightContent

        Widget rightContent = SizedBox(
          width: isMobile ? 340 : 420,
          //width: imageBoxSize,
          height: isMobile ? 340 : 420,
          //height: imageBoxSize,
          child: Stack(
            //fit: StackFit.expand,
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: 0.08,
                child: Container(
                  width: boxSize,
                  height: boxSize,// chỗ này nếu ko có thì gây lỗi hình là nó kéo theo stack
                  decoration: BoxDecoration(
                    color: Colors.greenAccent.shade100,
                    borderRadius: BorderRadius.circular(outerRadius),
                  ),
                ),
              ),

             //FractionallySizedBox(
                //widthFactor: 0.75,
                //heightFactor: 0.82,
               // child:
                 AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(innerRadius),
                    child: Image.asset("assets/comlogo.jpg", fit: BoxFit.cover),
                  ),
                ),
             // ),
            ],
          ),
        );

        return Container(
          color: Color(0xFFF6F8F5),
          child: SizedBox(
            height: isMobile ? null : 700,
            child: isMobile
                ? Column(
                    children: [
                      leftContent,
                      const SizedBox(height: 40),
                      rightContent,
                    ],
                  )
                : Row(
                    children: [
                      Expanded(child: leftContent),
                      Expanded(child: rightContent),
                    ],
                  ),
          ),
        );
      }, //dấu } builder của layoutbuilder nằm ở vị trí này
    ); //) dấu ngoặc layoutbuilder ở vị trí này
  }
}


// Container(
//   width: isMobile ? 340 : 420,
//   height: isMobile ? 340 : 420,
// )




//layout trở thành:

// SizedBox (420)
//    ↓
// Stack
//    ↓
// Transform.rotate
//    ↓
// Container (420)


// khi container không có height và width thì nó sẽ giãn theo Stack
//Container = expand theo constraint