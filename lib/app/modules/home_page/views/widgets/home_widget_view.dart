import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarIcons extends StatelessWidget {
  const AppbarIcons({
    super.key,
    required this.content,
    required this.icon,
  });

  final String content;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.snackbar(
          content,
          "Fitur ini belum tersedia",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.white,
          colorText: Colors.black,
          borderRadius: 10,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          duration: Duration(seconds: 2),
          icon: Icon(
            Icons.info_outline_rounded,
            color: Colors.black,
          ),
        );
      },
      icon: icon,
    );
  }
}

class ContentTitle extends StatelessWidget {
  const ContentTitle({
    super.key,
    required this.title,
    required this.subtitle,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  subtitle,
                  style: TextStyle(fontSize: 10),
                ),
              ),
            ],
          ),
          Row(
            children: [
              // Text(
              //   "Lainnya",
              //   style: TextStyle(
              //     fontSize: 12,
              //     fontWeight: FontWeight.bold,
              //     color: Colors.blue,
              //   ),
              // ),
              TextButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Belum Tersedia"),
                      ),
                      action: SnackBarAction(
                        label: 'Close',
                        onPressed: () {
                          ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        },
                      ),
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      padding: EdgeInsets.all(5),
                      duration: Duration(seconds: 2),
                    ),
                  );
                },
                child: Text("Lainnya"),
              ),
              SizedBox(
                width: 3,
              ),
              Icon(Icons.arrow_forward_ios_rounded,
                  size: 12, color: Colors.blue),
            ],
          ),
        ],
      ),
    );
  }
}
