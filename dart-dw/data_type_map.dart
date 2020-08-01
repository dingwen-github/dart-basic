/*
* @Author DingWen
* @Description Map
* @Date 16:22 2020/8/1
**/

/*
  1.Map的key value 可以是任意类型
  2.length
  3.isEmpty
  4.isNotEmpty
  5.keys 得到所有的key _CompactIterable<dynamic>
  6.values 得到所有的value  _CompactIterable<dynamic>
  7.containsKey('')  containsValue('')
  8.remove() //参数为key
  9.List 转 Map 默认会以下标为key list的内容为value 下标从零开始
  10. forEach() \\参数为一个方法 使用如下

 */
void main() {
  Map map1 = {'first': 'dart', 'second': 100, 200: '100', true: false};
  print(map1);
  print(map1['first']);
  print(map1[true]);
  map1['first'] = 100;
  print(map1);

  //不可变Map
  var map2 = const {'k1': 'v1'};
//  map2['k1'] = 'const';
  print(map2);

  print(map2.length);
  print(map2.isEmpty);
  Map map3 = {};
  print(map3.isNotEmpty);

  print(map1.keys);
  // _CompactIterable<dynamic>
  print(map1.values);
  print(map1.containsKey('first'));
  print(map1.containsValue('value'));

  map1.remove(true);
  print(map1);

  //只有一行时候可以使用 =>
  map1.forEach((k, v) => print('$k $v'));

  map1.forEach(myPrint);

  //List 转Map
  List list = ['1', '2', '3'];
 Map  listMap = list.asMap();
  print(listMap);
}

myPrint(k, v) {
  print('k= $k,v=$v');
}
