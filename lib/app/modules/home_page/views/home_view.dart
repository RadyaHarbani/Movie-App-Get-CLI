import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Obx(() => controller.bottom_nav_value[controller.currentIndex.value]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(40),
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 8),
            child: GNav(
              selectedIndex: 1,
              backgroundColor: Colors.transparent,
              tabBorderRadius: 20,
              color: Colors.black54,
              activeColor: Colors.white,
              tabBackgroundColor: Color.fromARGB(255, 0, 139, 128),
              padding: EdgeInsets.all(5),
              gap: 8,
              onTabChange: (value) {
                controller.currentIndex.value = value;
              },
              tabs: const [
                GButton(
                  padding:
                      EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
                  icon: Icons.home_rounded,
                  text: 'Riwayat',
                ),
                GButton(
                  padding:
                      EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
                  icon: Icons.history_edu_rounded,
                  text: 'Beranda',
                ),
                GButton(
                  padding:
                      EdgeInsets.only(right: 10, left: 10, top: 5, bottom: 5),
                  icon: Icons.person_rounded,
                  text: 'Profil',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
