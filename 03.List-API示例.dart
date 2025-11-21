// Dart List 常用 API 示例
// 这个文件展示了 Dart 中 List 的各种常用操作和方法

void main() {
  print("===== Dart List API 示例 =====\n");
  
  // ----------------------------------------
  // 1. List 的创建
  // ----------------------------------------
  print("1. List 的创建:");
  
  // 方式1: 使用字面量创建
  var list1 = [1, 2, 3, 4, 5];
  print("  字面量创建: $list1");
  
  // 方式2: 指定类型的字面量
  List<String> list2 = ['苹果', '香蕉', '橙子'];
  print("  指定类型创建: $list2");
  
  // 方式3: 使用 List.filled 创建固定长度的列表
  var list3 = List<int>.filled(5, 0);
  print("  List.filled 创建: $list3");
  
  // 方式4: 使用 List.generate 创建
  var growableList = List<int>.generate(
    3,
    (int index) => index * index,
    growable: true,
  );
  print(growableList); // [0, 1, 4]

  var fixedLengthList = List<int>.generate(
    3,
    (int index) => index * index,
    growable: false,
  );
  print(fixedLengthList); // [0, 1, 4]

  
  // 方式5: 创建空列表
  var emptyList1 = [];
  var emptyList2 = <String>[];
  print("  空列表1: $emptyList1, 空列表2: $emptyList2");
  
  // 方式6: 使用 List.from 从其他可迭代对象创建
  var list5 = List.from([1, 2, 3]);
  print("  List.from 创建: $list5");
  print("\n");
  
  // ----------------------------------------
  // 2. 基本属性和访问方法
  // ----------------------------------------
  print("2. 基本属性和访问方法:");
  
  var fruits = ['苹果', '香蕉', '橙子', '葡萄', '西瓜'];
  
  // 长度
  print("  列表长度: ${fruits.length}");
  
  // 访问元素
  print("  第一个元素: ${fruits[0]}");
  print("  最后一个元素: ${fruits[fruits.length - 1]}");
  
  // 安全访问 (避免索引越界)
  print("  索引2的元素: ${fruits.elementAt(2)}");
  
  // 检查是否为空
  print("  是否为空: ${fruits.isEmpty}");
  print("  是否不为空: ${fruits.isNotEmpty}");
  print("\n");
  
  // ----------------------------------------
  // 3. 修改列表内容
  // ----------------------------------------
  print("3. 修改列表内容:");
  
  var numbers = [1, 2, 3, 4, 5];
  print("  修改前: $numbers");
  
  // 修改元素
  numbers[0] = 100;
  print("  修改第一个元素后: $numbers");
  
  // 使用 setRange 修改一段元素
  numbers.setRange(1, 3, [200, 300]);
  print("  setRange 后: $numbers");
  
  // 使用 fillRange 填充一段元素
  numbers.fillRange(3, 5, 999);
  print("  fillRange 后: $numbers");
  print("\n");
  
  // ----------------------------------------
  // 4. 添加元素
  // ----------------------------------------
  print("4. 添加元素:");
  
  var colors = ['红色', '绿色'];
  print("  初始列表: $colors");
  
  // 添加单个元素到末尾
  colors.add('蓝色');
  print("  add 后: $colors");
  
  // 添加多个元素到末尾
  colors.addAll(['黄色', '紫色']);
  print("  addAll 后: $colors");
  
  // 在指定位置插入元素
  colors.insert(1, '橙色');
  print("  insert 后: $colors");
  
  // 在指定位置插入多个元素
  colors.insertAll(3, ['黑色', '白色']);
  print("  insertAll 后: $colors");
  print("\n");
  
  // ----------------------------------------
  // 5. 删除元素
  // ----------------------------------------
  print("5. 删除元素:");
  
  var animals = ['猫', '狗', '兔子', '猴子', '狗', '熊猫'];
  print("  初始列表: $animals");
  
  // 删除指定索引的元素
  animals.removeAt(2);
  print("  removeAt(2) 后: $animals");
  
  // 删除最后一个元素
  animals.removeLast();
  print("  removeLast() 后: $animals");
  
  // 删除第一个匹配的元素
  animals.remove('狗');
  print("  remove('狗') 后: $animals");
  
  // 删除多个元素
  animals.removeWhere((animal) => animal.contains('子'));
  print("  removeWhere 后: $animals");
  
  // 清空列表
  animals.clear();
  print("  clear() 后: $animals");
  print("\n");
  
  // ----------------------------------------
  // 6. 查找和检查
  // ----------------------------------------
  print("6. 查找和检查:");
  
  var scores = [85, 92, 78, 95, 63, 88];
  
  // 检查元素是否存在
  print("  列表中是否有 95: ${scores.contains(95)}");
  print("  列表中是否有 100: ${scores.contains(100)}");
  
  // 查找元素索引
  print("  92 的索引: ${scores.indexOf(92)}");
  print("  100 的索引: ${scores.indexOf(100)}"); // 不存在返回 -1
  
  // 从末尾开始查找
  scores.add(92);
  print("  添加 92 后: $scores");
  print("  最后一个 92 的索引: ${scores.lastIndexOf(92)}");
  
  // 查找满足条件的第一个元素
  var firstHighScore = scores.firstWhere((score) => score > 90, orElse: () => 0);
  print("  第一个高于 90 的分数: $firstHighScore");
  
  // 查找满足条件的最后一个元素
  var lastHighScore = scores.lastWhere((score) => score > 90, orElse: () => 0);
  print("  最后一个高于 90 的分数: $lastHighScore");
  print("\n");
  
  // ----------------------------------------
  // 7. 排序和反转
  // ----------------------------------------
  print("7. 排序和反转:");
  
  var sortNumbers = [5, 2, 8, 1, 9, 3];
  print("  原始列表: $sortNumbers");
  
  // 升序排序
  sortNumbers.sort();
  print("  升序排序后: $sortNumbers");
  
  // 降序排序
  sortNumbers.sort((a, b) => b.compareTo(a));
  print("  降序排序后: $sortNumbers");
  
  // 反转列表
  sortNumbers = [5, 2, 8, 1, 9, 3];
  print("  反转前: $sortNumbers");
  sortNumbers = sortNumbers.reversed.toList();
  print("  反转后: $sortNumbers");
  print("\n");
  
  // ----------------------------------------
  // 8. 过滤和映射
  // ----------------------------------------
  print("8. 过滤和映射:");
  
  var data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  
  // 过滤 - where 方法
  var evenNumbers = data.where((number) => number.isEven).toList();
  print("  偶数: $evenNumbers");
  
  // 映射 - map 方法
  var doubledNumbers = data.map((number) => number * 2).toList();
  print("  每个数乘以2: $doubledNumbers");
  
  // 组合使用
  var result = data
      .where((number) => number > 5)
      .map((number) => number * 3)
      .toList();
  print("  大于5的数乘以3: $result");
  print("\n");
  
  // ----------------------------------------
  // 9. 列表的截取和复制
  // ----------------------------------------
  print("9. 列表的截取和复制:");
  
  var original = [10, 20, 30, 40, 50];
  
  // 截取子列表 (注意：返回的是视图，修改会影响原列表)
  var sublist = original.sublist(1, 4);
  print("  子列表 [1,4): $sublist");
  
  // 创建列表的副本
  var copy = List.from(original);
  var copy2 = [...original]; // 使用展开运算符
  print("  copy: $copy");
  print("  copy2: $copy2");
  
  // 截取到指定长度
  var take = original.take(3).toList();
  print("  前3个元素: $take");
  
  // 跳过指定数量的元素
  var skip = original.skip(2).toList();
  print("  跳过前2个元素: $skip");
  print("\n");
  
  // ----------------------------------------
  // 10. 列表的合并和连接
  // ----------------------------------------
  print("10. 列表的合并和连接:");
  
  var listA = [1, 2, 3];
  var listB = [4, 5, 6];
  
  // 使用 addAll 合并
  var merged1 = [...listA]; // 先复制一份
  merged1.addAll(listB);
  print("  addAll 合并: $merged1");
  
  // 使用展开运算符合并
  var merged2 = [...listA, ...listB];
  print("  展开运算符合并: $merged2");
  
  // 连接元素为字符串
  var strList = ['Hello', 'Dart', 'List'];
  var joined = strList.join(' ');
  print("  元素连接: $joined");
  
  var joinedWithComma = strList.join(', ');
  print("  用逗号连接: $joinedWithComma");
  print("\n");
  
  // ----------------------------------------
  // 11. 列表的遍历
  // ----------------------------------------
  print("11. 列表的遍历:");
  
  var items = ['A', 'B', 'C', 'D'];
  
  // 方式1: for 循环
  print("  for 循环遍历:");
  for (int i = 0; i < items.length; i++) {
    print("    索引 $i: ${items[i]}");
  }
  
  // 方式2: for-in 循环
  print("  for-in 循环遍历:");
  for (var item in items) {
    print("    $item");
  }
  
  // 方式3: forEach 方法
  print("  forEach 方法遍历:");
  items.forEach((item) {
    print("    $item");
  });
  
  // 方式4: 带索引的 forEach
  print("  带索引的 forEach:");
  items.asMap().forEach((index, item) {
    print("    索引 $index: $item");
  });
  print("\n");
  
  // ----------------------------------------
  // 12. 列表的数学操作
  // ----------------------------------------
  print("12. 列表的数学操作:");
  
  var nums = [1, 2, 3, 4, 5];
  
  // 求和
  var sum = nums.reduce((a, b) => a + b);
  print("  求和: $sum");
  
  // 求乘积
  var product = nums.reduce((a, b) => a * b);
  print("  求乘积: $product");
  
  // 求最大值
  var max = nums.reduce((a, b) => a > b ? a : b);
  print("  最大值: $max");
  
  // 求最小值
  var min = nums.reduce((a, b) => a < b ? a : b);
  print("  最小值: $min");
  print("\n");
  
  print("===== List API 示例完成 =====");
}