import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_app/screens/home.dart';
import 'package:medical_app/screens/login_page.dart';
import 'package:medical_app/screens/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LogInPage(),
      getPages: [
        GetPage(name: "/page-two", page: () => const RegisterPage(),),
        GetPage(name: "/page-three", page: () =>  HomePage(),),
      ],
    );
  }
}
