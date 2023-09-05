import 'package:get/get.dart';
import 'api_constants_provider.dart';
import '../models/movie_list_model.dart';

class MovieListProvider extends GetConnect {
  
  Future<List<Results>> getTrendingMovies() async {
    final response = await get(AppConstant.trendingUrl);
    return Results.fromJsonList(response.body['results']);
  }

  Future<List<Results>> getTopRatedMovies() async {
    final response = await get(AppConstant.topRatedUrl);
    return Results.fromJsonList(response.body['results']);
  }

  Future<List<Results>> getUpcomingMovies() async {
    final response = await get(AppConstant.upcomingUrl);
    return Results.fromJsonList(response.body['results']);
  }
}
