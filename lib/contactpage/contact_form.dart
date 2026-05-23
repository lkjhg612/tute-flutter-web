import 'package:flutter/material.dart';
import 'package:flutterweb/contactpage/input_form.dart';


class ContactForm extends StatelessWidget {
  const ContactForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Send Us a Message",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 28),
        Input(label: "Full Name *", hint: "Nhập Tên"),
        Input(label: "Email Address *", hint: "Email"),
        Input(label: "Phone Number", hint: "Số điện thoại"),
        Input(label: "Subject *", hint: "Subject?"),
        Input(
          label: "Message *",
          hint: "Tell us more about your inquiry...",
          maxLines: 4,
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.send, color: Colors.white),
            label: const Text(
              "Send Message",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              padding: const EdgeInsets.symmetric(vertical: 18),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        )
      ],
    );
  }
}

