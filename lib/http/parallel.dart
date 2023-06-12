//연주님 범석님 신비님 감사합니다.
import 'package:http/http.dart' as http;
import 'dart:typed_data';

void main() async {
  testFile();
  testFile2();
}

Future<Uint8List> downloadImage(String fileImage) async {
  final response = await http.get(Uri.parse(fileImage));
  return response.bodyBytes;
}

Future<void> testFile() async {
  final fileImage = 'https://alimipro.com/favicon.ico';

  Stopwatch stopwatch = Stopwatch()..start();
  print('병렬 처리 시작시간');
  await downloadImage(fileImage);
  await downloadImage(fileImage);
  await downloadImage(fileImage);
  print('병렬 처리 끝난시간');
  print('병렬 처리까지 걸린 시간 ${stopwatch.elapsed}');
}

Future<void> testFile2() async {
  final fileImage = 'https://alimipro.com/favicon.ico';

  Stopwatch stopwatch = Stopwatch()..start();
  print('순차 처리 시작시간');
  downloadImage(fileImage);
  downloadImage(fileImage);
  downloadImage(fileImage);
  print('순차 처리 끝난시간');
  print('순차 처리까지 걸린 시간 ${stopwatch.elapsed}');
}
