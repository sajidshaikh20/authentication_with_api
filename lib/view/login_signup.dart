import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:nauggets_assessment/Widgets/input_field.dart';
import 'package:nauggets_assessment/Widgets/submit_button.dart';
import 'package:nauggets_assessment/controller/login_controller.dart';

import '../controller/registeration.dart';

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  RegisterationController registerationController =
      Get.put(RegisterationController());
  LoginController loginController = Get.put(LoginController());
  var isLogin = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blueAccent,
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(36),
        child: Center(
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        color:
                        !isLogin.value ? Colors.white : Colors.amber;
                        isLogin.value = false;
                      },
                      child: Text("Register"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        color:
                        !isLogin.value ? Colors.black : Colors.brown;
                        isLogin.value = true;
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
                SizedBox(
                  height: 80,
                ),
                isLogin.value ? loginWidget() : registerWidget()
              ],
            ),
          ),
        ),
      ),
    ));
  }

  Widget registerWidget() {
    return Column(
      children: [
        InputTextFieldWidget(
          textEditingController: registerationController.emailController,
          hintText: 'email',
        ),
        const SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(
          textEditingController: registerationController.passwordController,
          hintText: 'passoword',
        ),
        const SizedBox(
          height: 20,
        ),
        SubmitButton(
            onPressed: () => registerationController.registerWithEmail(),
            title: 'Register')
      ],
    );
  }

  Widget loginWidget() {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(
          textEditingController: loginController.emailController,
          hintText: 'email address',
        ),
        SizedBox(
          height: 20,
        ),
        InputTextFieldWidget(
            textEditingController: loginController.passwordController,
            hintText: 'password'),
        SizedBox(
          height: 20,
        ),
        SubmitButton(
            onPressed: () => loginController.loginwithEmail(), title: 'login ')
      ],
    );
  }
}
