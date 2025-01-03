import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Gojek',
      theme: ThemeData(
        primaryColor: const Color(0xFF00AA13),
        fontFamily: 'SF Pro Text',
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.ONBOARDING,
      getPages: AppPages.routes,
    );
  }
}
