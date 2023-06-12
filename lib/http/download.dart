// 범석님 연주님 감사합니다
import 'dart:io';
import 'dart:typed_data';
import 'package:http/http.dart' as http;

Future<Uint8List> downloadImage(String fileImage) async {
  final response = await http.get(Uri.parse(fileImage));
  return response.bodyBytes;
}

Future<File> saveFile(Uint8List fileBytes, String fileName) async {
  final file = File(fileName);

  final save = await file.writeAsBytes(fileBytes);
  return save;
}

Future<void> main() async {
  final fileImage = 'https://alimipro.com/favicon.ico';

  Stopwatch stopwatch = Stopwatch()..start();

  try {
    final fileBytes = await downloadImage(fileImage);

    print('다운로드 시작합니다.');

    await saveFile(fileBytes, fileImage);

    print('다운로드 끝났습니다.');
    print('===============');
    print('소요시간은 : ${stopwatch.elapsed} 입니다');
    print('용량은 : ${fileBytes.lengthInBytes}fileBytes 입니다');
  } catch (e) {
    print('fileImage을 확인해 주세요');
  }
}
