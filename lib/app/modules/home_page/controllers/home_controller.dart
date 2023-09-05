import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_tmdb_get_cli/app/modules/home_page/views/widgets/home_view_value.dart';

import '../../../data/models/movie_list_model.dart';
import '../../../data/providers/movie_list_provider.dart';
import '../../history_page/views/history_page_view.dart';
import '../../profile_page/views/profile_page_view.dart';

class HomeController extends GetxController {
  MovieListProvider movieListProvider = MovieListProvider();

  Future<List<Results>> getTrendingMovies() async {
    final response = await movieListProvider.getTrendingMovies();
    return response;
  }

  Future<List<Results>> getTopRatedMovies() async {
    final response = await movieListProvider.getTopRatedMovies();
    return response;
  }

  Future<List<Results>> getUpcomingMovies() async {
    final response = await movieListProvider.getUpcomingMovies();
    return response;
  }

  RxInt currentIndex = 1.obs;
  RxList<Widget> bottom_nav_value = [
    HistoryPageView(),
    HomeViewValue(),
    ProfilePageView(),
  ].obs;

  @override
  void onInit() {
    currentIndex.value = 1;
    super.onInit();
  }
}
