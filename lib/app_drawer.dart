import 'package:flutter/material.dart';
import 'package:flutterweb/aboutpage/aboutpage.dart';
import 'package:flutterweb/contactpage/contactpage.dart';
import 'package:flutterweb/homepage.dart';
import 'package:flutterweb/menupage/menupage.dart';
import 'package:flutterweb/orderplatformbutton.dart';
import 'package:url_launcher/url_launcher.dart';

class AppDrawer extends StatelessWidget {
  Future<void> openOrderLink(String url) async {
    final uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("Không mở được link");
    }
  }

  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [Color(0xFF22C55E), Color(0xFF4ADE80)],
            //   ),
            // ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0644CC),
                  Color(0xFF00838F),
                  // Color(0xFF70A33C),
                  Color(0xFF70A33C),
                ],

                stops: [
                  0.0,
                  0.65,
                  // 0.65,
                  1.0,
                ],
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
            child: Align(
              alignment: Alignment.center,
              // child: Text(
              //   "TUTE",
              //   style: TextStyle(
              //     color: Colors.white,
              //     fontSize: 24,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              child: Image.asset(
                "assets/tutelogoupgrade.png",

                height: 80,

                fit: BoxFit.contain,
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const Icon(Icons.home, color: Colors.green),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
          ),
          const Divider(color: Colors.grey, thickness: 1),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const Icon(Icons.restaurant_menu, color: Colors.green),
            title: const Text("Menu"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MenuPage()),
              );
            },
          ),
          const Divider(color: Colors.grey, thickness: 1),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const Icon(Icons.info, color: Colors.green),
            title: const Text("About"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AboutContact()),
              );
            },
          ),
          const Divider(color: Colors.grey, thickness: 1),
          ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20),
            leading: const Icon(Icons.phone, color: Colors.green),
            title: const Text("Contact"),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ContactPage()),
              );
            },
          ),

          const Divider(height: 32),

          // const Padding(
          //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          //   child: Text(
          //     "Đặt món",
          //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          //   ),
          // ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Đặt món ngay",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          // ListTile(
          //   leading: Image.asset("assets/shopeelogo.png", width: 24),
          //   title: const Text("ShopeeFood"),
          //   onTap: () => openOrderLink("https://shopeefood.vn/u/p6L6MVw"),
          // ),

          // ListTile(
          //   leading: Image.asset("assets/grablogo.jpg", width: 24),
          //   title: const Text("GrabFood"),
          //   onTap: () => openOrderLink(
          //     "https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN",
          //   ),
          // ),

          // ListTile(
          //   leading: Image.asset("assets/belogo.jpg", width: 24),
          //   title: const Text("BeFood"),
          //   onTap: () =>
          //       openOrderLink("https://begroup.onelink.me/ZOqn/6r2g5fau"),
          // ),

          // ListTile(
          //   leading: Image.asset("assets/greensmlogo.png", width: 24),
          //   title: const Text("GreenSM"),
          //   onTap: () =>
          //       openOrderLink("https://xanhsmngon.onelink.me/14WJ/5eyg45ak"),
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Wrap(
              spacing: 12,
              runSpacing: 12,
              children: [
                OrderPlatformButton(
                  image: "assets/shopeelogo.png",
                  label: "ShopeeFood",
                  onTap: () => openOrderLink("https://shopeefood.vn/u/p6L6MVw"),
                ),

                OrderPlatformButton(
                  image: "assets/grablogo.jpg",
                  label: "GrabFood",
                  onTap: () => openOrderLink("https://r.grab.com/g/6-20260510_202055_18342a0955a24be2bfc02162b11a1aa3_MEXMPS-5-C74CG8CWLXMEGN"),
                ),

                OrderPlatformButton(
                  image: "assets/belogo.jpg",
                  label: "BeFood",
                  onTap: () => openOrderLink("https://begroup.onelink.me/ZOqn/6r2g5fau"),
                ),

                OrderPlatformButton(
                  image: "assets/greensmlogo.png",
                  label: "GreenSM",
                  onTap: () => openOrderLink("https://xanhsmngon.onelink.me/14WJ/5eyg45ak"),
                ),
              ],
            ),
           
          ),
           const Spacer(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "© 2026 Tute. All rights reserved.",
                style: TextStyle(color: Colors.black54),
              ),
            ),
        ],
      ),
    );
  }
}
