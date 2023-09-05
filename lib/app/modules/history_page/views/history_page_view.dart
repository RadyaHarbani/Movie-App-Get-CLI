import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../profile_page/views/widgets/profile_page_widget_view.dart';
import '../controllers/history_page_controller.dart';

class HistoryPageView extends GetView<HistoryPageController> {
  HistoryPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonCustom(
                    imagePath: 'assets/images/icon_category.png',
                  ),
                  IconButtonCustom(
                    imagePath: 'assets/images/icon_ticket.png',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Text(
                'Belum Ada Riwayat',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
