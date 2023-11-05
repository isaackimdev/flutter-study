class User{
  String? name;
  int? age;
  some() {}
}

main() {
  Object obj = User(); // 자동 캐스팅
  // obj.some(); // error,
  if(obj is User) {
    // smart casting..
    obj.some();
  }

  Object obj1 = User();
  (obj1 as User).some();

  // 동일 객체 반복 접근
  User()
    ..name = 'world'
    ..age = 20
    ..some();

}