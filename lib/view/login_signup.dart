import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:nauggets_assessment/Widgets/input_field.dart';
import 'package:nauggets_assessment/controller/login_controller.dart';
import 'package:nauggets_assessment/controller/sign_controller.dart';

class Authscreen extends StatefulWidget {
  const Authscreen({super.key});

  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  SignupController signupController = Get.put(SignupController());
  LoginController loginController = Get.put(LoginController());

  var isLogin = false.obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        Color:
                        !isLogin.value ? Colors.white : Colors.amber;
                        isLogin.value = false;
                      },
                      child: Text("Sign in"),
                    ),
                    MaterialButton(
                      onPressed: () {
                        Color:
                        !isLogin.value ? Colors.white : Colors.amber;
                        isLogin.value = true;
                      },
                      child: Text("Login"),
                    ),
                  ],
                ),
                SizedBox(height: 80,),
                isLogin.value ?
              ],
            ),
          ),
        ),
      ),
    )
    );
  }
  Widget signupWidget(){
    return Column(
      children: [
             InputTextFieldWidget(textEditingController: signupController.emailController, hintText: 'email',),
            SizedBox(height: 20,),
            InputTextFieldWidget(textEditingController: signupController.passwordController, hintText: 'passoword',)
      ],
    );
  }
}
