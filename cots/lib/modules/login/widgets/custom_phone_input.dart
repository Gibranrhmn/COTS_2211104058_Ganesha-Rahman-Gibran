import 'package:flutter/material.dart';
import '../controller/login_controller.dart';

class CustomPhoneInput extends StatelessWidget {
  final LoginController controller;

  const CustomPhoneInput({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Phone number*',
          style: TextStyle(
            fontSize: 14,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          keyboardType: TextInputType.phone,
          onChanged: controller.updatePhoneNumber,
          decoration: InputDecoration(
            prefixText: '+62 ',
            prefixStyle: const TextStyle(color: Colors.black),
            hintText: '8888888888',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Color(0xFF00880F)),
            ),
          ),
        ),
      ],
    );
  }
}
