import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneNumber = ''.obs;

  void updatePhoneNumber(String number) {
    phoneNumber.value = number;
  }

  void continueLogin() {
    print('Logging in with number: ${phoneNumber.value}');
  }

  void handleIssueWithNumber() {
    print('Handling issue with number');
  }
}
