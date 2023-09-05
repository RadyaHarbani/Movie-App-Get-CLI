class AppConstant {
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '3b7117a8fb9b8206739cb9a5d50ac555';
  static const String imageUrlW500 = 'https://image.tmdb.org/t/p/w500';
  static const String imageUrlOriginal = 'https://image.tmdb.org/t/p/original';

  static const String trendingUrl =
      '${AppConstant.baseUrl}/trending/movie/day?api_key=${AppConstant.apiKey}';
  static const topRatedUrl =
      '${AppConstant.baseUrl}/movie/top_rated?api_key=${AppConstant.apiKey}';
  static const upcomingUrl =
      '${AppConstant.baseUrl}/movie/upcoming?api_key=${AppConstant.apiKey}';
}