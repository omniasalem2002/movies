import 'package:movies/data/models/MoviesPopuler.dart';

import 'package:http/http.dart';
//import 'package:movies/data/models/UpCommingMovies.dart';
import 'dart:convert';

import 'package:movies/ui/widget/constant.dart';
 class ApiManager
{
      Future<MoviesPopuler?> GetMovie()async{
        try {
          Response response = await get(
              Uri.parse("https://api.themoviedb.org/3/tv/popular?api_key=${Constant.ApiKey}"));
          MoviesPopuler moviesPopular =
          MoviesPopuler.fromJson (jsonDecode(response.body) as Map<String, dynamic>);

          if (response.statusCode >= 200 && response.statusCode < 300 ) {

            return moviesPopular ;
          }
          else{
            throw Exception;
        }
        }
        catch (_) {
          rethrow;
        }
}
      Future<MoviesPopuler?> GetUpComing()async{
        try {
          Response response = await get(
              Uri.parse("https://api.themoviedb.org/3/movie/upcoming?api_key=${Constant.ApiKey}"));
          MoviesPopuler moviesPopular =
          MoviesPopuler.fromJson (jsonDecode(response.body) as Map<String, dynamic>);

          if (response.statusCode >= 200 && response.statusCode < 300 ) {

            return moviesPopular ;
          }
          else{
            throw Exception;
          }
        }
        catch (_) {
          rethrow;
        }
      }
      Future<MoviesPopuler?> GetNewReleses()async{
        try {
          Response response = await get(
              Uri.parse("https://api.themoviedb.org/3/movie/top_rated?api_key=${Constant.ApiKey}"));
          MoviesPopuler moviesPopular =
          MoviesPopuler.fromJson (jsonDecode(response.body) as Map<String, dynamic>);

          if (response.statusCode >= 200 && response.statusCode < 300 ) {

            return moviesPopular ;
          }
          else{
            throw Exception;
          }
        }
        catch (_) {
          rethrow;
        }
      }
      //https://api.themoviedb.org/3/movie/top_rated
}