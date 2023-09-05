import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../register_page/controllers/register_page_controller.dart';
import '../controllers/profile_page_controller.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  final RegisterPageController inputValue = Get.find<RegisterPageController>();
  ProfilePageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                final profileImage = inputValue.selectedImagePath.value;
                return Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(100),
                  ),
                  // ignore: unnecessary_null_comparison
                  child: profileImage != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: Image(
                            image: FileImage(
                              File(profileImage),
                            ),
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.black87,
                        ),
                );
              }),
              SizedBox(height: 20),
              Text('Nama Pengguna'),
              // Tambahkan informasi profil lainnya di sini
            ],
          ),
        ),
      ),
    );
  }
}
