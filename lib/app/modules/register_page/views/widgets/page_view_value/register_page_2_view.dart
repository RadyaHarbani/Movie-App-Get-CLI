import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../controllers/register_page_controller.dart';
import '../register_page_widget_view.dart';

class RegisterPage2View extends GetView<RegisterPageController> {
  const RegisterPage2View({Key? key}) : super(key: key);
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
                  'assets/images/logo_app.png',
                  width: 110,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    'Lengkapi data dirimu',
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
                    'Isi data dirimu agar kami bisa mengenalmu.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                  ),
                ),
                InputTextForm(
                  prefixIcon: Icon(Icons.person_2_rounded, size: 19),
                  labelText: "First Name",
                  controller: controller.firstNameController,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InputTextForm(
                    prefixIcon: Icon(Icons.person_2_rounded, size: 19),
                    labelText: "Last Name",
                    controller: controller.lastNameController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InputTextForm(
                    prefixIcon: Icon(Icons.phone_android_rounded, size: 19),
                    labelText: "Phone Number",
                    controller: controller.phoneController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: InputTextForm(
                    prefixIcon: Icon(Icons.location_on_rounded, size: 19),
                    labelText: "Adress",
                    controller: controller.addressController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Terimakasih telah bergabung dengan kami.',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
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
