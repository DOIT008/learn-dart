// Dart 字符串 API 示例文件
// 本文件展示了 Dart 中字符串的常用操作和 API

void main() {
  print('=== Dart 字符串 API 示例 ===\n');

  // 1. 字符串的创建
  print('1. 字符串的创建:');
  String str1 = '单引号字符串';
  String str2 = "双引号字符串";
  String str3 = '''多行字符串
第二行
第三行''';
  String str4 = """多行字符串
使用三双引号
支持换行""";
  String str5 = r'原始字符串，不转义 \n \t'; // 原始字符串
  String str6 = '''\n原始多行字符串
使用三个单引号带前缀 r''';
  
  print('str1: $str1');
  print('str2: $str2');
  print('str3:\n$str3');
  print('str4:\n$str4');
  print('str5: $str5');
  print('str6:\n$str6');
  print('');

  // 2. 字符串的基本属性
  print('2. 字符串的基本属性:');
  String text = 'Hello Dart';
  print('字符串: "$text"');
  print('长度: ${text.length}'); // 长度
  print('是否为空: ${text.isEmpty}'); // 是否为空
  print('是否不为空: ${text.isNotEmpty}'); // 是否不为空
  print('');

  // 3. 访问字符串中的字符
  print('3. 访问字符串中的字符:');
  String hello = 'Hello';
  print('字符串: "$hello"');
  print('第一个字符: ${hello[0]}'); // 通过索引访问
  print('最后一个字符: ${hello[hello.length - 1]}');
  print('前3个字符: ${hello.substring(0, 3)}'); // 子字符串
  print('从索引2开始的字符: ${hello.substring(2)}');
  print('');

  // 4. 字符串比较
  print('4. 字符串比较:');
  String a = 'dart';
  String b = 'DART';
  String c = 'dart';
  
  print('a: "$a", b: "$b", c: "$c"');
  print('a == c: ${a == c}'); // 相等比较
  print('a == b: ${a == b}'); // 大小写敏感
  print('a.compareTo(b): ${a.compareTo(b)}'); // 字典序比较
  print('a.toLowerCase() == b.toLowerCase(): ${a.toLowerCase() == b.toLowerCase()}'); // 忽略大小写比较
  print('a.startsWith("da"): ${a.startsWith("da")}'); // 以指定前缀开始
  print('a.endsWith("rt"): ${a.endsWith("rt")}'); // 以指定后缀结束
  print('');

  // 5. 大小写转换
  print('5. 大小写转换:');
  String mixedCase = 'Hello Dart World';
  print('原始字符串: "$mixedCase"');
  print('转大写: "${mixedCase.toUpperCase()}"');
  print('转小写: "${mixedCase.toLowerCase()}"');
  print('首字母大写: "${mixedCase[0].toUpperCase()}${mixedCase.substring(1)}"');
  print('');

  // 6. 查找操作
  print('6. 查找操作:');
  String searchText = 'Dart is a programming language';
  print('字符串: "$searchText"');
  print('查找 "is": ${searchText.indexOf("is")}'); // 查找子串位置
  print('查找 "a" (从索引10开始): ${searchText.indexOf("a", 10)}');
  print('最后一次出现 "a": ${searchText.lastIndexOf("a")}');
  print('包含 "programming": ${searchText.contains("programming")}');
  print('包含 "javascript": ${searchText.contains("javascript")}');
  print('是否以 "Dart" 开始: ${searchText.startsWith("Dart")}');
  print('是否以 "language" 结束: ${searchText.endsWith("language")}');
  print('');

  // 7. 截取和分割
  print('7. 截取和分割:');
  String splitText = 'apple,banana,orange,grape';
  print('字符串: "$splitText"');
  List<String> fruits = splitText.split(',');
  print('分割结果: $fruits');
  print('第一个水果: ${fruits[0]}');
  print('连接结果: ${fruits.join(" | ")}'); // 连接列表元素
  print('');

  // 8. 替换操作
  print('8. 替换操作:');
  String replaceText = 'I love JavaScript. JavaScript is great!';
  print('原始字符串: "$replaceText"');
  String newText1 = replaceText.replaceFirst('JavaScript', 'Dart'); // 替换第一个
  print('替换第一个: "$newText1"');
  String newText2 = replaceText.replaceAll('JavaScript', 'Dart'); // 替换所有
  print('替换所有: "$newText2"');
  String newText3 = replaceText.replaceRange(7, 18, 'Dart'); // 替换指定范围
  print('替换范围: "$newText3"');
  print('');

  // 9. 修剪和填充
  print('9. 修剪和填充:');
  String paddedText = '   Dart   ';
  print('原始字符串: "$paddedText"');
  print('修剪后: "${paddedText.trim()}"'); // 修剪两端空白
  print('修剪左侧: "${paddedText.trimLeft()}"');
  print('修剪右侧: "${paddedText.trimRight()}"');
  print('左侧填充: "${paddedText.trim().padLeft(10, "*")}"'); // 左侧填充
  print('右侧填充: "${paddedText.trim().padRight(10, "*")}"'); // 右侧填充
  print('');

  // 10. 字符串判断
  print('10. 字符串判断:');
  String numericStr = '12345';
  String alphaStr = 'abcdef';
  String mixedStr = 'abc123';
  String whitespaceStr = '   ';
  
  print('"$numericStr" 是纯数字: ${_isNumeric(numericStr)}');
  print('"$alphaStr" 是纯字母: ${_isAlpha(alphaStr)}');
  print('"$mixedStr" 包含数字: ${_containsDigit(mixedStr)}');
  print('"$whitespaceStr" 只包含空白: ${whitespaceStr.trim().isEmpty}');
  print('');

  // 11. 字符串转换
  print('11. 字符串转换:');
  int num1 = 42;
  double num2 = 3.14159;
  bool flag = true;
  
  print('整数转字符串: ${num1.toString()}');
  print('浮点数转字符串: ${num2.toString()}');
  print('浮点数保留2位小数: ${num2.toStringAsFixed(2)}');
  print('布尔值转字符串: ${flag.toString()}');
  print('字符串转整数: ${int.tryParse("123")}');
  print('字符串转浮点数: ${double.tryParse("3.14")}');
  print('无效字符串转整数: ${int.tryParse("abc")}'); // 返回null
  print('');

  // 12. 字符串连接和插值
  print('12. 字符串连接和插值:');
  String firstName = '张三';
  String lastName = '李四';
  int age = 25;
  
  // 连接操作
  String fullName1 = firstName + ' ' + lastName;
  print('使用 + 连接: "$fullName1"');
  
  // 字符串插值
  String fullName2 = '$firstName $lastName';
  print('使用插值连接: "$fullName2"');
  
  // 插值表达式
  String info = '$firstName $lastName 的年龄是 ${age + 1} 岁';
  print('插值表达式: "$info"');
  
  // 原始字符串中的插值
  String rawWithInterpolation = '${firstName} 的原始路径: C:\\Users\\$lastName';
  print('带插值的路径: "$rawWithInterpolation"');
  print('');

  // 13. 字符串重复
  print('13. 字符串重复:');
  String repeatStr = 'Dart';
  print('"$repeatStr" 重复3次: "${repeatStr * 3}"');
  print('');

  // 14. 字符串和正则表达式
  print('14. 字符串和正则表达式:');
  String regexText = 'My email is user@example.com and another is admin@test.org';
  RegExp emailRegex = RegExp(r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}');
  
  print('查找所有邮箱:');
  for (var match in emailRegex.allMatches(regexText)) {
    print('  ${match.group(0)}');
  }
  
  print('替换所有邮箱为 [EMAIL]: ${regexText.replaceAll(emailRegex, "[EMAIL]")}');
  print('');

  // 15. 字符串遍历
  print('15. 字符串遍历:');
  String iterateText = 'Hello';
  print('遍历字符串 "$iterateText" 的每个字符:');
  
  for (int i = 0; i < iterateText.length; i++) {
    print('  索引 $i: ${iterateText[i]}');
  }
  
  print('使用 for-in 遍历:');
  for (var char in iterateText.runes) {
    print('  ${String.fromCharCode(char)}');
  }
  print('');

  // 16. 编码相关操作
  print('16. 编码相关操作:');
  String encodeText = '你好，Dart!';
  
  // UTF-8 编码
  List<int> utf8Bytes = encodeText.codeUnits;
  print('UTF-8 编码字节: $utf8Bytes');
  
  // 从 UTF-8 解码
  String decodedText = String.fromCharCodes(utf8Bytes);
  print('解码后的字符串: "$decodedText"');
  
  // 获取字符编码点
  print('字符编码点:');
  for (var rune in encodeText.runes) {
    print('  ${String.fromCharCode(rune)}: $rune');
  }
  print('');

  print('=== Dart 字符串 API 示例 完成 ===');
}

// 辅助函数：判断字符串是否为纯数字
bool _isNumeric(String str) {
  return double.tryParse(str) != null;
}

// 辅助函数：判断字符串是否为纯字母
bool _isAlpha(String str) {
  RegExp alphaRegex = RegExp(r'^[a-zA-Z]+$');
  return alphaRegex.hasMatch(str);
}

// 辅助函数：判断字符串是否包含数字
bool _containsDigit(String str) {
  RegExp digitRegex = RegExp(r'\\d');
  return digitRegex.hasMatch(str);
}