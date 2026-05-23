import 'package:flutter/material.dart';
import 'package:flutterweb/contactpage/contact_form.dart';
import 'package:flutterweb/contactpage/contact_form_upgrade.dart';
import 'package:flutterweb/contactpage/contact_info_panel.dart';



class ContactContentSection extends StatelessWidget {
  const ContactContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final isMobile = width < 850;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 24 : 80,
        vertical: isMobile ? 60 : 90,
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: isMobile
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  //ContactForm(),
                  ContactFormUpgrade(),
                  SizedBox(height: 48),
                  ContactInfoPanel(),
                ],
              )
            : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  //Expanded(child: ContactForm()),
                  Expanded(child: ContactFormUpgrade()),
                  SizedBox(width: 80),
                  Expanded(child: ContactInfoPanel()),
                ],
              ),
      ),
    );
  }
}