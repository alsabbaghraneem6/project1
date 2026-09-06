import 'package:dio/dio.dart';

import '../Temp/Movies_model.dart';
class RemoteDataSource {
  final Dio dio=Dio(BaseOptions(
    baseUrl: 'https://api.themoviedb.org/3/',
    queryParameters: {
      'api_key': '802b2c4b88ea1183e50e6b285a27696e',
    },
  )
  );
  fetchPopularMovies() async {
final response= await dio.get('movie/popular');
List results=response.data['results'];
return results.map((movie) => MoviesModel.fromJson(movie)).toList();

  }
}