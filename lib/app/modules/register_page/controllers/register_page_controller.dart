import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class RegisterPageController extends GetxController {
  late PageController pageRegisterController;
  TextEditingController? usernameController;
  TextEditingController? firstNameController;
  TextEditingController? lastNameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? phoneController;
  TextEditingController? addressController;

  RxBool obsecureText = true.obs;
  RxInt currentIndex = 0.obs;

  var selectedImagePath = ''.obs;

  void getImage(ImageSource imageSource) async {
    final pickedFile = await ImagePicker().pickImage(source: imageSource);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
    } else {
      Get.snackbar(
        "Error",
        "Tidak Ada Gambar Yang Dipilih",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
  
  @override
  void onInit() {
    super.onInit();
    usernameController = new TextEditingController();
    firstNameController = new TextEditingController();
    lastNameController = new TextEditingController();
    emailController = new TextEditingController();
    passwordController = new TextEditingController();
    phoneController = new TextEditingController();
    addressController = new TextEditingController();
    pageRegisterController = PageController(initialPage: 0);
  }

  @override
  void onClose() {
    pageRegisterController.dispose();
    super.onClose();
  }
}
