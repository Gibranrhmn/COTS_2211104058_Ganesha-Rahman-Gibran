import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/login_controller.dart';
import '../widgets/custom_phone_input.dart';
import '../widgets/login_header.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Get.back(),
        ),
        title: Image.asset(
          'assets/images/gojek_logo.png',
          height: 20,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoginHeader(),
            const SizedBox(height: 24),
            CustomPhoneInput(controller: controller),
            const SizedBox(height: 16),
            TextButton(
              onPressed: controller.handleIssueWithNumber,
              child: const Text(
                'Issue with number?',
                style: TextStyle(
                  color: Color(0xFF00880F),
                  fontSize: 14,
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: controller.continueLogin,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00880F),
                minimumSize: const Size(double.infinity, 48),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
