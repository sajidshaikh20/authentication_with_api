import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nauggets_assessment/view/home_view.dart';
import 'package:nauggets_assessment/view/login_signup.dart';

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
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Authscreen());
  }
}
