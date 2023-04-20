import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SpalashScreen extends StatelessWidget {
  const SpalashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // logo here
            Image.asset(
              'assets/images/logo.png',
              height: 100,
            ),

            Text(
              "ArmsCorp",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 15,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
