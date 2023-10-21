void some1(var a) { // parameter -> dynamic, var 생략도 가능

}

dynamic some2() { // some2() { } 과 동일하다고 볼 수 있음.
  // return 10;
  // return true;
  return 'hello';
}

main() {
  some1(10);
  some1(true);
  some1('hello');
}