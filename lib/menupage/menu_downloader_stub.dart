import 'package:url_launcher/url_launcher.dart';

Future<void> downloadMenu() async {
  final url = Uri.parse('https://drive.google.com/file/d/1wWsp4BKcKNk5kueSHi2a3_oLMw0fQxjV/view?usp=sharing');
  await launchUrl(url, mode: LaunchMode.externalApplication);
}