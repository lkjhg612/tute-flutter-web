import 'dart:ui';

import 'package:flutter/material.dart';
import "package:flutterweb/headeritem.dart";
import 'package:flutterweb/ordernowdropdown.dart';

import 'package:google_fonts/google_fonts.dart';

class HeaderBlur extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HeaderBlur({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final isDesktop = width > 650;

        // return ClipRRect(
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        return Container(
          //return
          // color: Colors.white.withValues(alpha: 0.65),
          // padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),

          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF0644CC),
               Color(0xFF00838F),
               //Color(0xFF0E8F9C),
               // Color(0xFF70A33C),
                Color(0xFF70A33C),
              ],

              stops: [
                0.0, 
                0.65,
                // 0.65, 
                 1.0],
              //0.0 ------ 0.35      0.65 ------1.0
              //  xanh dương  → chuyển → xanh lá
            ),

            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 12,
                offset: Offset(0, 4),
              ),
            ],
          ),

          child: Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: () {
                    //Navigator.pushNamed(context, '/');
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/',
                      (route) => false,
                    ); //Cách này sẽ về Home và clear stack, tránh bấm back quay lại trang cũ.
                  },

                  child: Row(
                    // Orbitron
                    // Audiowide
                    children: [
                      Image.asset("assets/tutelogoupgrade.png", height: 50),
                      const SizedBox(width: 10),
                      // Text(
                      //   "TUTE",
                      //   style: GoogleFonts.audiowide(
                      //     fontSize: 30,
                      //     fontWeight: FontWeight.w800,
                      //     color: Colors.blue,
                      //     letterSpacing: 2,
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),

              Spacer(),

              if (isDesktop) ...[
                HeaderItem(
                  title: "Home",
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                HeaderItem(
                  title: "Menu",
                  onTap: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                ),
                HeaderItem(
                  title: "About",
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                HeaderItem(
                  title: "Contact",
                  onTap: () {
                    Navigator.pushNamed(context, '/contact');
                  },
                ),

                SizedBox(width: 16),

                const OrderNowDropdown(),
              ] else
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white,),
                  
                  onPressed: () {
                    scaffoldKey.currentState
                        ?.openEndDrawer(); //currentState là ScaffoldState? là trạng thái nội bộ của Scaffold chứa các hàm như openDrawer() openEndDrawer() showSnackBar()
                  },
                  color: Colors.green,
                ),
            ],
          ),
        );

        //   ),
        // );
      },
    );
  }
}
