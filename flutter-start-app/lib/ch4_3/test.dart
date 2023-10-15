// var, dynamic
class User {}

main() {
  dynamic data = 10;
  data = 'hello';
  data = true;
  data = User();

  var no1 = 10;
  no1 = 20;
  // no1 = true; // error

  var no2;  // dynamic
  no2 = 10;
  no2 = true;
  no2 = 'hello';
}