import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<<<< Temporary merge branch 1
import 'package:medical_app/screens/home.dart';
=========
import 'package:medical_app/screens/login_page.dart';
>>>>>>>>> Temporary merge branch 2

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
<<<<<<<<< Temporary merge branch 1
    return GetMaterialApp(
=========
    return const GetMaterialApp(
>>>>>>>>> Temporary merge branch 2
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}
