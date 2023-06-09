// 신비님 범석님 감사합니다
import 'dart:convert';
import 'json_model/movie_detail.dart';
import 'json_model/movie_json.dart';
import 'package:http/http.dart' as http;

void main() async {
  final movieInfo = await getMovieInfo();
  final movieTitle = await movieInfo.map((e) => e.title).toList();

  print(movieTitle);

  final firstMovieId = movieInfo[0].id;
  final movieDetail = await getMovieDetail(firstMovieId);
  print('영화 제목 : ${movieDetail.title}');
  print('영화 설명 : ${movieDetail.overview}');
  print('상영 시간 : ${movieDetail.runtime}분');
}

Future getMovieInfo() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/upcoming?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));
  final json = jsonDecode(response.body);

  return MovieInfo.fromJson(json).results;
}

Future<MovieDetail> getMovieDetail(int movieId) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/$movieId?api_key=a64533e7ece6c72731da47c9c8bc691f&language=ko-KR&page=1'));

  final json = jsonDecode(response.body);

  return MovieDetail.fromJson(json);
}
