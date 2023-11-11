class SuperClass {
  String name;
  int age;
  SuperClass(this.name, this.age) {}
}

class SubClass extends SuperClass {
  // SubClass() : super(); // error -> compiler 가 생성하는 방식

  // SubClass(String name, int age) : super(name, age){};
  SubClass(super.name, super.age);
}