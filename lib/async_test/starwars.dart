import 'dart:convert';

void main() async {
  final jsonString = jsonDecode(await getMovieInfo());
  print(jsonString['director']);
}

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': 1977,
  };
  return jsonEncode(mockData);
}
