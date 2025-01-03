import 'package:get/get.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/view/login_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/view/onboarding_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.ONBOARDING;

  static final routes = [
    GetPage(
      name: Routes.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
  ];
}
