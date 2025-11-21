// Dart Map 常用 API 精简示例
// 本文件只包含最常用的 Map 操作和 API

void main() {
  print('=== Dart Map 常用 API 精简示例 ===\n');

  // 1. 最常用的 Map 创建方法
  print('1. 常用的 Map 创建方法:');
  // 使用 Map 字面量创建（最常用）
  Map<String, int> scores1 = {'张三': 90, '李四': 85, '王五': 95};
  print('使用字面量创建: $scores1');
  
  // 使用 {} 创建空 Map
  var emptyMap = {};
  print('使用 {} 创建空 Map: $emptyMap');
  
  // 使用 from 方法从其他 Map 创建（复制 Map）
  Map<String, int> scores2 = Map.from(scores1);
  print('使用 from 方法创建副本: $scores2');
  print('');

  // 2. 基本属性（常用）
  print('2. 常用的 Map 基本属性:');
  Map<String, dynamic> person = {
    'name': '张三',
    'age': 25,
    'city': '北京'
  };
  print('Map: $person');
  print('长度: ${person.length}'); // 长度
  print('是否为空: ${person.isEmpty}'); // 是否为空
  print('所有键: ${person.keys}'); // 所有键
  print('所有值: ${person.values}'); // 所有值
  print('');

  // 3. 常用的访问和修改操作
  print('3. 常用的访问和修改操作:');
  Map<String, String> capitals = {
    '中国': '北京',
    '美国': '华盛顿',
    '日本': '东京'
  };
  print('原始 Map: $capitals');
  
  // 访问元素（最常用）
  print('中国的首都: ${capitals['中国']}');
  
  // 检查键是否存在（常用）
  print('是否包含键 "中国": ${capitals.containsKey('中国')}');
  print('是否包含值 "巴黎": ${capitals.containsValue('巴黎')}');
  
  // 添加/修改元素（最常用）
  capitals['美国'] = '纽约'; // 修改现有值
  capitals['英国'] = '伦敦'; // 添加新元素
  print('修改和添加后的 Map: $capitals');
  
  // 使用 putIfAbsent 添加不存在的元素（常用）
  capitals.putIfAbsent('法国', () => '巴黎');
  print('使用 putIfAbsent 添加后: $capitals');
  print('');

  // 4. 常用的删除操作
  print('4. 常用的删除操作:');
  Map<String, int> products = {
    '手机': 5999,
    '电脑': 8999,
    '平板': 3999,
    '耳机': 1299
  };
  print('原始 Map: $products');
  
  // 删除指定键的元素（最常用）
  products.remove('耳机');
  print('删除耳机后: $products');
  
  // 清空 Map（常用）
  // products.clear();
  // print('清空后的 Map: $products');
  print('');

  // 5. 最常用的遍历方法
  print('5. 常用的遍历方法:');
  Map<String, int> fruits = {
    '苹果': 10,
    '香蕉': 8,
    '橙子': 12
  };
  
  // 使用 forEach 遍历（最常用）
  print('使用 forEach 遍历:');
  fruits.forEach((key, value) {
    print('  $key: $value 元/斤');
  });
  
  // 使用 for-in 遍历 MapEntry（常用）
  print('\n使用 for-in 遍历 MapEntry:');
  for (var entry in fruits.entries) {
    print('  ${entry.key}: ${entry.value}');
  }
  print('');

  // 6. 常用的合并和更新操作
  print('6. 常用的合并和更新操作:');
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'b': 3, 'c': 4};
  
  // 使用展开操作符合并（Dart 2.3+，最常用）
  Map<String, int> mergedMap = {...map1, ...map2};
  print('使用展开操作符合并: $mergedMap');
  
  // 使用 update 更新指定键的值（常用）
  Map<String, int> updateMap = Map.from(map1);
  updateMap.update('a', (value) => value * 2);
  print('更新键 a 的值: $updateMap');
  print('');

  // 7. 常用的集合转换
  print('7. 常用的集合转换:');
  Map<String, int>转换Map = {'one': 1, 'two': 2, 'three': 3};
  
  // Map 转键列表（常用）
  List<String> keyList = 转换Map.keys.toList();
  print('Map 转键列表: $keyList');
  
  // Map 转值列表（常用）
  List<int> valueList = 转换Map.values.toList();
  print('Map 转值列表: $valueList');
  
  // 从两个列表创建 Map（常用）
  List<String> newKeys = ['four', 'five'];
  List<int> newValues = [4, 5];
  Map<String, int> fromListMap = Map.fromIterables(newKeys, newValues);
  print('从两个列表创建 Map: $fromListMap');
  print('');

  print('=== Dart Map 常用 API 精简示例 完成 ===');
  print('\n注: 以上仅包含最常用的 Map API，其他高级或不常用的操作已省略。');
}