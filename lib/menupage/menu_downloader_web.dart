import 'package:web/web.dart' as web;

void downloadMenu() {
  final anchor = web.HTMLAnchorElement()
    ..href = 'assets/menuchayngon.jpg'
    ..target = '_blank';

  anchor.click();
}