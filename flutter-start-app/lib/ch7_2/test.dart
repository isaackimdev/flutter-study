abstract class User {
  void some();
}
class Customer extends User {
  @override
  void some() {
    // TODO: implement some
  }
}

class Test {
  int no;
  String name;
  Test(this.no, this.name);
  String hello(String who) => 'hello $who';
}

class Sub1 extends Test {
  Sub1(super.no, super.name);
}
class Sub2 implements Test {
  int no = 10;
  String name = 'kim';
  String hello(String who) {
    return 'aaa';
  }
}