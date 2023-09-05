import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import 'home_widget_view.dart';
import 'top_rated_slider.dart';
import 'trending_slider.dart';
import 'up_coming_slider.dart';

class HomeViewValue extends GetView<HomeController> {
  HomeViewValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.3,
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: AppbarIcons(
              content: 'Belum Ada Halaman Profil',
              icon: Icon(
                Icons.person,
                color: Colors.black54,
                size: 20,
              ),
            ),
          ),
          title: Image.asset(
            'assets/images/logo_app.png',
            width: 115,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: AppbarIcons(
                content: 'Belum Ada Halaman Notifikasi',
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black54,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 38,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(
                        Icons.location_on_sharp,
                        color: Colors.black54,
                        size: 18,
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Batam, Indonesia',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                        size: 18,
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 123,
              child: Image.asset(
                'assets/images/carosoul_gimmick.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            ContentTitle(
                title: "Film Trending",
                subtitle: "Berikut Film - Film Yang Sedang Trending"),
            SizedBox(height: 23),
            SizedBox(
              child: GetBuilder<HomeController>(builder: (controller) {
                return FutureBuilder(
                  future: controller.getTrendingMovies(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return TrendingSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                );
              }),
            ),
            SizedBox(height: 15),
            Center(
              child: Text(
                "Sedang Tayang",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 15),
            Divider(
              color: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 5),
              child: Row(
                children: [
                  Text(
                    "TIX Clone",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.local_offer_rounded,
                      size: 18, color: Colors.yellow[700]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nonton lebih asik dengan teman - temanmu",
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(
                    "hanya di tmdb TIX clone, Aplikasi favorit.",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 320,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/carosoul_gimmick_dua.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Divider(
              color: Colors.grey[400],
            ),
            SizedBox(height: 18),
            ContentTitle(
                title: "Film Terbaik",
                subtitle: "Berikut Film - Film Terbaik Dari Rating Penonton"),
            SizedBox(height: 15),
            SizedBox(
              child: GetBuilder<HomeController>(builder: (controller) {
                return FutureBuilder(
                  future: controller.getTopRatedMovies(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return TopRatedSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                );
              }),
            ),
            SizedBox(height: 20),
            Divider(
              color: Colors.grey[400],
            ),
            SizedBox(height: 20),
            ContentTitle(
                title: "Film Akan Tayang",
                subtitle: "Berikut Film - Film Yang Akan Tayang di TMDB"),
            SizedBox(height: 25),
            SizedBox(
              child: GetBuilder<HomeController>(builder: (controller) {
                return FutureBuilder(
                  future: controller.getUpcomingMovies(),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return UpcomingSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                );
              }),
            ),
            SizedBox(height: 30),
            Divider(
              color: Colors.grey[400],
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Transform.rotate(
                    angle: pi / 5,
                    child: Icon(Icons.local_movies_rounded,
                        size: 35, color: Colors.yellow[700]),
                  ),
                  SizedBox(height: 15),
                  Text(
                    "Dan... Cut! Yuks Coba Lihat Lagi",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    "dari paling atas.",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
