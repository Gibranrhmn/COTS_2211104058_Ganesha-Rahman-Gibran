import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/onboarding_page.dart';

class OnboardingController extends GetxController {
  var currentPage = 0.obs;
  final pageController = PageController();

  List<OnboardingItem> onboardingItems = [
    OnboardingItem(
      title: 'Selamat datang di gojek!',
      description:
          'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin semua kebutuhan mu, kapanpun, dan di manapun.',
      image: 'assets/images/onboarding_welcome.png',
    ),
    OnboardingItem(
      title: 'Transportasi & logistik',
      description:
          'Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~',
      image: 'assets/images/onboarding_transport.png',
    ),
    OnboardingItem(
      title: 'Pesan makan & belanja',
      description: 'Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
      image: 'assets/images/onboarding_food.png',
    ),
  ];

  void nextPage() {
    if (currentPage.value < onboardingItems.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  void updatePage(int page) {
    currentPage.value = page;
  }
}
