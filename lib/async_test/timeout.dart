import 'dart:async';

Future<String> timeoutFuture() async {
  await Future.delayed(Duration(seconds: 6));
  return 'ok';
}

Future<void> waitFuture(String message) async {
  await Future.delayed(Duration(seconds: 5));
  throw Exception(message);
}

Future<void> main() async {
  await timeoutFuture();
  try {
    await waitFuture("error").timeout(const Duration(seconds: 5));
  } on TimeoutException {
    print("timeout");
  }
}
