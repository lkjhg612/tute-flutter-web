import "package:flutter/material.dart";
import "package:flutterweb/headeritem.dart";

class Header extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const Header({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final isDesktop = width > 550;

       return Container(
          height: 72,
          padding: EdgeInsets.symmetric(
            horizontal: 32,
          ), //padding theo trục đối xứng với left và right là 32
          decoration: BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 4)],
            color: Colors.lightGreenAccent,
            //color: Colors.white54
          ),

          child: Row(
            children: [
              Text(
                "TUTE",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),

              Spacer(),

              if (isDesktop) ...[
                HeaderItem(title: "Home"),
                HeaderItem(title: "Menu"),
                HeaderItem(title: "About"),
                HeaderItem(title: "Contact"),

                SizedBox(width: 16),

                ElevatedButton(
                  onPressed: () {},
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
                    "Order Now",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ] else
                IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
            ],
          ),
        );

        //Backdropfiller
        //ClipRRect
     
      },
    );
  }
}
