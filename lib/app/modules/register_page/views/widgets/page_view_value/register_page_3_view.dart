import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/register_page_controller.dart';
import '../register_page_widget_view.dart';

class RegisterPage3View extends GetView<RegisterPageController> {
  const RegisterPage3View({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/logo_app.png',
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: Text(
                      'Masukkan Fotomu!',
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
                      'Masukkan fotomu untuk profilmu.',
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  InputImage(),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Container(
                      width: 250,
                      child: Text(
                        "Dengan memasukkan fotomu, kamu bergabung dengan kami.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
