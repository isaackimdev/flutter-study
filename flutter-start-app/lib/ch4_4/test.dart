main() {
  List list1 = [10, 'hello', true];
  list1[0] = 20;
  list1[1] = 'world';
  print('List : [${list1[0]}, ${list1[1]}, ${list1[2]}]');

  List<int> list2 = [10, 20, 30]; // type 지정 제너릭 사용
  // list2[0] = 'hello'; // error

  var list3 = List<int>.filled(3, 0, growable: true);
  print(list3);

  list3[0] = 10;
  list3[1] = 20;
  list3[2] = 30;
  print(list3);

  list3.add(40);
  print(list3);

}