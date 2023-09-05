import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_page_controller.dart';
import 'register_page_widget_view.dart';

class RegisterPage1View extends GetView<RegisterPageController> {
  const RegisterPage1View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 10, right: 10),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/logo_register.png',
                  width: 100,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Selamat Bergabung!',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Text(
                    'Jelajahi film terbaru dan terbaik di dunia',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
                InputTextForm(
                  prefixIcon: Icon(Icons.person_2_rounded, size: 19),
                  labelText: "Username",
                  controller: controller.usernameController,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InputTextForm(
                    prefixIcon: Icon(Icons.email_rounded, size: 19),
                    labelText: "Email",
                    controller: controller.emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InputTextFormPassword(),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? ',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Yaudah',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
