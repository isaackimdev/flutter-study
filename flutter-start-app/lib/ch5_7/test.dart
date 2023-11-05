some() {
  throw FormatException('my exception info');
}
main() {
  var list = [10, 20, 30];
  for (var data in list) {
    print(data);
  }

  try {
    print('step1...');
    some();
    print('step2...');
  } on FormatException catch(e) { // 이 예외의 객체를 달라.
    print('step3...$e');
  } on Exception {
    print('step4...');
  } finally { // 꼭 쓰지 않아도 됨
     print('step5...');
  }
  print('step6...');

}