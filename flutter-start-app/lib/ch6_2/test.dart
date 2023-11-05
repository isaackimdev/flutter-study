class User {
  late String name;
  late int age;

  // 다양한 생성자 및 초기화 하는 방법
  
  /*
  User(String name, int age) {
    this.name = name;
    this.age = age;
  }
   */

  // 축약 버전
  // User(this.name, this.age);
  
  // User(String arg1, int arg2) : this.name = arg1, this.age = arg2 {}
  
  // User(List list) : this.name = list[0], this.age = list[1] {}

}