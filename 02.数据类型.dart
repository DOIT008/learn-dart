// var str = 'hello world';
// String str1 = 'hello world';
// // 多行字符串
// String str2 = '''
// hello world
// hello world
// hello world
// ''';
// String str3 = """
// hello world
// hello world
// hello world
// """;
// String str5 = '你好 Dart';
// String str6 = '你好 Flutter';
// String str7 = '$str5$str6';
// // 等同于
// String str8 = '${str5}${str6}';
// 
// 
// 
// // 
// int a = 10;
// 
// double b = 11.1;
// double c = 12;
// // 运算符
// int d = a + 10;
// double e = b + c;
// 
// // 关系运算符
// bool f = a > b;
// bool g = c >= d;
// 
// // 乘法运算符
// int h = a * 2;
// double i = b * 3;
// 
// // 除法运算符
// double j = c / 2;
// double k = b / a;
// 
// // 布尔值
// bool l = a == 10;
// bool m = b != c;
// 
// 
// 
// void main() {
//   print(a);
//   print(b);
//   print(c);
// }

// -----------------------------------数字类型--------------------------

// var a = 123;
// var b = '123';
// 
// void main(){
//   if(a==b){
//     print('a==b');
//   }else{
//     print('a!=b'); // 走这里
//   }
// }

// -----------------------------------List类型--------------------------

// var l1 = <int>[1,2,3,4,5];
// 
// // 列表的长度
// int l_length = l1.length;
// 
// void main(){
//   print(l1); // [1, 2, 3, 4, 5]
//   l1.add(6); // 向列表末尾添加一个元素
//   print(l1); // [1, 2, 3, 4, 5, 6]
//   print(l_length); // 6
// }

// 使用List.filled方法创建List

var l2 = List<int>.filled(5, 0);
void main(){
  print(l2); // [0, 0, 0, 0, 0]
  l2[0] = 10;
  print(l2); // [10, 0, 0, 0, 0]
  l2[1] = 20;
  print(l2); // [10, 20, 0, 0, 0]
  l2.add(30); // 报错
}

