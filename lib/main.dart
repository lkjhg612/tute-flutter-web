import 'package:flutter/material.dart';
import 'package:flutterweb/aboutpage/aboutpage.dart';
import 'package:flutterweb/contactpage/contactpage.dart';
import 'package:flutterweb/menupage/menupage.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Homepage(),
      initialRoute: '/',

      // routes: {
      //   '/' : (context) => Homepage(),
      //   '/menu' :(context) => MenuPage()
      // }
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case "/":
            return PageRouteBuilder(
              pageBuilder: (_, _, _) => const Homepage(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            );
          case "/menu":
            return PageRouteBuilder(
              pageBuilder: (_, _, _) => const MenuPage(),
              transitionsBuilder: (_, animation, _, child) {
                return FadeTransition(opacity: animation, child: child);
              },
              transitionDuration: const Duration(milliseconds: 180),
              reverseTransitionDuration: Duration(microseconds: 180),
            );
            case "/contact":
            return PageRouteBuilder(
              pageBuilder: (_, _, _) => const ContactPage(),
              transitionsBuilder: (_, animation, _, child) {
                return FadeTransition(opacity: animation, child: child);
              },
              transitionDuration: const Duration(milliseconds: 180),
              reverseTransitionDuration: Duration(microseconds: 180),
            );
            case "/about":
            return PageRouteBuilder(
              pageBuilder: (_, _, _) => const AboutContact(),
              transitionsBuilder: (_, animation, _, child) {
                return FadeTransition(opacity: animation, child: child);
              },
              transitionDuration: const Duration(milliseconds: 180),
              reverseTransitionDuration: Duration(microseconds: 180),
            );

          default:
            return PageRouteBuilder(
              pageBuilder: (_, _, _) => const Homepage(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
            );
        }
      },
    );
  }
}
