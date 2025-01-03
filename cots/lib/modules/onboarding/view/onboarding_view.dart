import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../login/bindings/login_binding.dart';
import '../../login/view/login_view.dart';
import '../controller/onboarding_controller.dart';
import '../widgets/dot_indicator.dart';
import '../widgets/onboarding_page.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/gojek_logo.png',
                    height: 20,
                  ),
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'IND',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: controller.updatePage,
                itemCount: controller.onboardingItems.length,
                itemBuilder: (context, index) {
                  return OnboardingPage(
                    item: controller.onboardingItems[index],
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Obx(() => DotIndicator(
                        currentPage: controller.currentPage.value,
                        pageCount: controller.onboardingItems.length,
                      )),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () => Get.to(() => const LoginView(),
                        binding: LoginBinding()),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF00880F),
                      minimumSize: const Size(double.infinity, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      elevation: 0,
                    ),
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Daftar Button
                  OutlinedButton(
                    onPressed: () => Get.to(() => const LoginView(),
                        binding: LoginBinding()),
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 48),
                      side: const BorderSide(
                        color: Color(0xFF00880F),
                        width: 1.5,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text(
                      'Belum ada akun?, Daftar dulu',
                      style: TextStyle(
                        color: Color(0xFF00880F),
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Terms Text
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan Layanan dan Kebijakan Privasi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
