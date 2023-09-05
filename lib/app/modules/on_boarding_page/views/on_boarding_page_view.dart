import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/on_boarding_page_controller.dart';
import 'on_boarding_widget_view.dart';

class OnBoardingPageView extends GetView<OnBoardingPageController> {
  const OnBoardingPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OnBoardingContentList contentList = OnBoardingContentList();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                onPageChanged: (value) {
                  controller.currentIndex.value = value;
                },
                itemCount: contentList.list_on_board.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  image: contentList.list_on_board[index].image,
                  title: contentList.list_on_board[index].title,
                  description: contentList.list_on_board[index].description,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25, left: 25, bottom: 30),
              child: Row(
                children: [
                  ...List.generate(
                    contentList.list_on_board.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: Obx(() => DotIndicator(
                            isActive: index == controller.currentIndex.value,
                          )),
                    ),
                  ),
                  Spacer(),
                  Obx(
                    () => controller.currentIndex.value ==
                            contentList.list_on_board.length - 1
                        ? GestureDetector(
                            onTap: () => Get.offAndToNamed('/register-page'),
                            child: Container(
                              height: 40,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 0, 139, 128),
                              ),
                              child: Center(
                                child: Text(
                                  'Daftar',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : GestureDetector(
                            onTap: () {
                              controller.pageController.nextPage(
                                duration: Duration(milliseconds: 300),
                                curve: Curves.ease,
                              );
                            },
                            child: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Color.fromARGB(255, 0, 139, 128),
                              ),
                              child: Image.asset(
                                'assets/images/arrow_right.png',
                              ),
                            ),
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
