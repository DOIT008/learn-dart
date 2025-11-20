
String name = '张三';
// 定义一个函数
void sayHello(String localName) {
  print('修改前 $localName');
  localName = '李四';
  print('修改后 $localName');
}

const PI = 3.1415926;
// PI = 123456; // 错误写法

// void 标识main函数没有返回值

final now = DateTime.now().weekday;
const weekDays = ['星期一', '星期二', '星期三', '星期四', '星期五', '星期六', '星期日'];

// const now1 = DateTime.now();


void main() { 
  // sayHello(name);
  // print(name);
  print(weekDays[now - 1]);
}

/* 注释 */



