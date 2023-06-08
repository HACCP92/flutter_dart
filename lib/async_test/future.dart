// Future <void> main() async {
//   final Future delay = Future.delayed(Duration(seconds: 5), () {
//     print('5초 끝');
//   });
// try {
// await saveDb(1111);
// } catch(e) {
//   print ('에러 발생');
// }
// Future<void> saveDb(user) async {
// await Future.delayed(Duration(seconds:5));
// print('sending email to $user');

import 'dart:io';

Future<void> copyText(
    String sourcePath, String replaceFrom, String replaceTo) async {
  try {
    final data = await File(sourcePath).readAsString();
    final text = data.replaceAll(replaceFrom, replaceTo);
    await File('lib/async_test/sample.csv').writeAsString(text);
  } catch (err) {
    throw Exception('파일 복사 중에 오류가 발생!: $err');
  }
}

void main() async {
  try {
    await copyText('lib/async_test/sample.csv', '김석봉', '한석봉');
    print(await File('lib/async_test/sample.csv').readAsString());
  } catch (error) {
    print(error);
  }
}
