// 신비님 범석님 감사합니다
import 'dart:convert';
import 'json_model/movie_detail.dart';
import 'json_model/movie_json.dart';
import 'package:http/http.dart' as http;

void main() async {
  final movies = await getMovieInfos();
  final moviseTitles = movies.map((e) => e.title).toList();

  print(movies);
  print(moviseTitles);

  final firstMovieId = movies[298618].id;
  final movieDetail = await getMovieDetail(firstMovieId);
  print('영화제목 : ${movieDetail.title}');
  print('영화설명 : ${movieDetail.overview}');
  print('상영시간 : ${movieDetail.runtime}');
}

Future<List<Results>> getMovieInfos() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final json = jsonDecode(response.body);

  return Movies.fromJson(json).results;
}

Future<MovieDetail> getMovieDetail(int movieId) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

  final json = jsonDecode(response.body);

  return MovieDetail.fromJson(json);
}
