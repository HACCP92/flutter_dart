import 'dart:io';

void main() {
  copy('newText', 'copyText');
}

void copy(String source, String target) {
  final srcFile = File(source);
  final text = srcFile.readAsStringSync();

  final copyFile = File(target);
  copyFile.writeAsStringSync(text);
}
