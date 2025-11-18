String name = '张三';
// 定义一个函数
void sayHello() {
  print('hello $name');
}
// 定义一个list
List<String> names = ['张三', '李四', '王五'];
// 定义一个map
Map<String, int> scores = {'张三': 90, '李四': 80, '王五': 70};
// 定义一个Object类
class Person {
  String name;
  int age;
  Person(this.name, this.age);
  // 定义一个方法
  void sayName() {
    print('my name is $name');
  }
}

var person1 = Person('李四', 18);

void loopList() {
  for (var item in names) {
    print(item);
  }
}
// 定义一个函数，遍历map
void loopMap() {
  for (var key in scores.keys) {
    print('$key: ${scores[key]}');
  }
}


void main() {
  sayHello();
  loopList();
  loopMap();
  print(person1);
  print(person1.age);
  person1.sayName();
}