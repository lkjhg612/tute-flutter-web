import 'package:emailjs/emailjs.dart' as emailjs;
import 'package:flutter/material.dart';
import 'package:flutterweb/contactpage/input_form_upgrade.dart';

class ContactFormUpgrade extends StatefulWidget {
  const ContactFormUpgrade({super.key});

  @override
  State<ContactFormUpgrade> createState() => _ContactFormUpgradeState();
}

//contactformstate
class _ContactFormUpgradeState extends State<ContactFormUpgrade> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    subjectController.dispose();
    messageController.dispose();
    super.dispose();
  }

  // void sendMessage() {
  //   final isValid = _formKey.currentState!.validate();
  //   if (!isValid) return;
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     const SnackBar(
  //       content: Text("Gửi tin nhắn thành công!", textAlign: TextAlign.center),
  //       backgroundColor: Colors.green,
  //     ),
  //   );

  //   nameController.clear();
  //   emailController.clear();
  //   phoneController.clear();
  //   subjectController.clear();
  //   messageController.clear();

  //   print(nameController.text);
  //   print(emailController.text);
  //   print(phoneController.text);
  //   print(subjectController.text);
  //   print(messageController.text);
  // }

  Future<void> sendEmail() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) return;
    try {
      await emailjs.send(
        'service_f719ghq',
        'template_0isbeaa',
        {
          'user_name': nameController.text,
          'user_email': emailController.text,
          'user_phone': phoneController.text,
          'subject': subjectController.text,
          'message': messageController.text,
        },
        emailjs.Options(
          publicKey: '6YZ-Gx_I_HWs71q93',
          privateKey: 'Om70RkxLw-UAQoqINdEtT',
          ),
      );

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Gửi thành công" ,textAlign: TextAlign.center,), backgroundColor: Colors.green));
      // print("gửi thành công");
      nameController.clear();
      emailController.clear();
      phoneController.clear();
      subjectController.clear();
      messageController.clear();
    } catch (e) {
      print(e);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Gửi không thành công" ,textAlign: TextAlign.center,), backgroundColor: Colors.green));

      if (e is emailjs.EmailJSResponseStatus) {
        print('STATUS: ${e.status}');
        print('TEXT: ${e.text}');
      } else {
        print(e);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Text(
          //   "TUTE đang lắng nghe bạn",
          //   style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          // ),
           RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              children: [
                TextSpan(
                  text: "TUTE",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
                TextSpan(
                  text: " đang lắng nghe bạn ",
                  style: TextStyle(
             
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),

          
          const SizedBox(height: 28),

          InputUpgrade(
            label: "Họ Tên *",
            hint: "Nhập Tên",
            controller: nameController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Vui lòng nhập tên";
              }
              return null;
            },
          ),

          InputUpgrade(
            label: "Email *",
            hint: "Email",
            controller: emailController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                //trim() loại bỏ khoảng trắng
                return "Vui lòng nhập email";
              }

              if (!value.contains("@")) {
                return "Email không hợp lệ";
              }

              return null;
            },
          ),

          InputUpgrade(
            label: "Số Điện Thoại *",
            hint: " Nhập số điện thoại",
            controller: phoneController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Vui lòng nhập số điện thoại";
              }

              if (value.length > 10 || value.length <= 9) {
                return "Số điện thoaị gồm 10 chữ số";
              }

              return null;
            },
          ),

          InputUpgrade(
            label: "Tiêu đề *",
            hint: "Nhập Tiêu Đề ",
            controller: subjectController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Vui lòng nhập tiêu đề";
              }

              return null;
            },
          ),

          InputUpgrade(
            label: "Nội Dung *",
            hint: "Nhập Nội Dung......",
            controller: messageController,
            maxLines: 4,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "Vui lòng nhập nội dung";
              }

              return null;
            },
          ),

          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              //onPressed: sendMessage,
              onPressed: sendEmail,
              icon: const Icon(Icons.send, color: Colors.white),
              label: const Text(
                "Gửi",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding: const EdgeInsets.symmetric(vertical: 18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
