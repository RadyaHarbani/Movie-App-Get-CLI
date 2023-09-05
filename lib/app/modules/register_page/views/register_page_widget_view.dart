import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../controllers/register_page_controller.dart';
import 'register_page_1_view.dart';
import 'register_page_2_view.dart';
import 'register_page_3_view.dart';

class InputTextForm extends StatelessWidget {
  const InputTextForm({
    super.key,
    required this.prefixIcon,
    required this.labelText,
    required this.controller,
  });

  final Icon? prefixIcon;
  final String? labelText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 43,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            prefixIcon: prefixIcon,
            label: Text(
              labelText as String,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputTextFormPassword extends GetView<RegisterPageController> {
  const InputTextFormPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 43,
        child: Obx(() => TextFormField(
              controller: controller.passwordController,
              obscureText: controller.obsecureText.value,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                prefixIcon: Icon(Icons.lock_rounded, size: 19),
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.obsecureText.value =
                        !controller.obsecureText.value;
                  },
                  icon: Icon(
                    controller.obsecureText.value
                        ? Icons.visibility_off_rounded
                        : Icons.visibility_rounded,
                    size: 19,
                  ),
                ),
                label: Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

class RegisterContentList {
  final List<Widget> list_register = [
    RegisterPage1View(),
    RegisterPage2View(),
    RegisterPage3View(),
  ];
}

class InputImage extends GetView<RegisterPageController> {
  const InputImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Obx(() => controller.selectedImagePath.value != ""
            ? Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: FileImage(File(controller.selectedImagePath.value)),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            : Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(100),
                ),
              )),
        Positioned(
          bottom: 0,
          right: 0,
          child: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: IconButton(
              onPressed: () {
                controller.getImage(ImageSource.gallery);
              },
              icon: Icon(
                Icons.camera_alt_rounded,
                size: 17,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
