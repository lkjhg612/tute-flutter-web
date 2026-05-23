import "package:flutter/material.dart";

class InputUpgrade extends StatelessWidget {
  final String label;
  final String hint;
  final int maxLines;
  final TextEditingController controller;
  final String? Function(String?)? validator;

  const InputUpgrade({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.maxLines = 1,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),

          // TextField(
          //   controller: controller,
          //   maxLines: maxLines,
          //   decoration: InputDecoration(
          //     hintText: hint,
          //     filled: true,
          //     fillColor: const Color(0xFFF1F1F3),
          //     border: OutlineInputBorder(
          //       borderRadius: BorderRadius.circular(10),
          //       borderSide: BorderSide.none,
          //     ),
          //     contentPadding: const EdgeInsets.symmetric(
          //       horizontal: 18,
          //       vertical: 16,
          //     ),
          //   ),
          // ),
          TextFormField(
            controller: controller,
            maxLines: maxLines,
            validator: validator,
            decoration: InputDecoration(
              hintText: hint,
              filled: true,
              fillColor: const Color(0xFFF1F1F3),
              errorStyle: const TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w500,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.red, width: 1.5),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
