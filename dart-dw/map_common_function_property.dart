/*
* @Author DingWen
* @Description Map常用方法和属性
* @Date 15:36 2020/8/22
**/

void main() {
  //声明初始化
  var map1 = {'aa': 'aa', 'bb': 22, 'cc': true};
  Map map2 = {'k1': 'v1', 'k2': 'v2'};
  //设置值
  map2['k1'] = 'dingwen';

  var map3 = new Map();
  map3['dd'] = 3.3;
  map3[2] = 'ddd22';
  //key存在，value存在value的值为null
  map3[3] = null;
  //不存在为null
  print(map3[4]);
  //长度
  print(map3.length);

  //指定泛型
  var map4 = <String, String>{};
  Map<int, String> map5 = new Map();
  Map<String, int> map6 = {'k1': 10};

  //属性
  print(map6.length);
  print(map6.isNotEmpty);
  print(map6.isEmpty);
  //value的集合
  print(map6.values);
  //key的集合
  print(map6.keys);
  //map迭代的键值对集合
  print(map6.entries);

  //方法
  //新增一个key-value
  //修改一个key的value
  Map<String, int> map7 = {"a": 1, "b": 2, "c": 3, "d": 4, "e": 5};
  //新增一个key value
  map7["f"] = 6; //新增一个不存在的key
//    print(map7);//{a: 1, b: 2, c: 3, d: 4, e: 5, f: 6}
  //修改一个value
  map7['a'] = 2;

  ///update()对指定key的value做出修改，返回修改的value
  Map<String, int> map8 = {'a': 1, 'b': 2};
  //key存在根据函数修改其值
  int result3 = map8.update('a', (value) => value * 2);
  //keu不存在报错

  //key不存在，但是有ifAbsent参数，返回ifAbsent函数的值，并添加到map中

  int result4 = map8.update('d', (value) => (value * 2), ifAbsent: () => (100));

  ///updateAll()根据参数函数的规则，批量修改map

  Map<String, int> map25 = {"a": 1, "b": 2, "c": 3};
  map25.updateAll((String key, int value) {
    if (key == "a") {
      return 10;
    }
    if (key == "b") {
      return 20;
    }
    return value * 2;
  }); //
//    print(map25);//{a: 10, b: 20, c: 6}

  ///remove(key)
  ///removeWhere()根据条件批量删除
  Map<String, int> map10 = {"a": 1, "b": 2, "c": 3, "d": 4, "e": 5};
  map10.removeWhere((key, value) => (value > 3)); //删除掉 符合参数函数的key value对
  //print(map10);//{a: 1, b: 2, c: 3}

  ///containsKey()是否包含key

  Map<String, int> map11 = {"a": 1, "b": 2, "c": 3, "d": 4, "e": 5};
//    print(map11.containsKey("a"));//true   是否包含key
//    print(map11.containsKey("aa"));//false  是否包含key

  ///是否包含value

  Map<String, int> map17 = {"a": 1, "b": 2, "c": 3};
//    print(map17.containsValue(1));//true
//    print(map17.containsValue(4));//false

  ///forEach()遍历
  Map<String, int> map18 = {'a': 1, 'b': 2, 'c': 3};
  map18.forEach((String key, int value) {
    print('$key  $value');

    //遍历是修改值
    map18['a'] = 2;
    //遍历是新增或者删除key都会报错
//    map18['e'] = 132;
//      map18.remove('a');

    ///Map()遍历每个元素，根据函数参数，对 key value做出修改，可以转换成其他类型的Map
    Map<String, int> map19 = {"a": 1, "b": 2, "c": 3};
    Map<int, String> map20 = map19.map((String key, int value) {
      return new MapEntry(value, key);
    });
//    print(map20);//{1: a, 2: b, 3: c}
  });

  ///clear()清空map

  ///addAll()整体合并另一个map，泛型要一致

  Map<String, int> map16 = {"a": 1, "b": 2, "c": 3};
  Map<String, int> other = {"a": 1, "c": 4, "d": 7};
  //key相同时value值后者覆盖前者，前者不存在时则添加进来
  map16.addAll(other);
//    print(map16);//{a: 1, b: 2, c: 4, d: 7}

  ///addEntries()合并两个map如果key有重复，被合并的map的value覆盖前者
  Map<String, int> map26 = {"a": 1, "b": 2, "c": 3};
  Map<String, int> map27 = {"a": 1, "b": 4, "d": 3, "e": 5};
  map26.addEntries(map27.entries);
//    print(map26);//{a: 1, b: 4, c: 3, d: 3, e: 5}

  ///putIfAbsent()存在key就获取值，不存在则添加到map然后返回值
  Map<String, int> map20 = {"a": 1, "b": 2, "c": 3};
  int result = map20.putIfAbsent("a", () => (2)); //存在
//    print(result);//1   获取key的值
//    print(map20);//{a: 1, b: 2, c: 3}   map不变
  int result2 = map20.putIfAbsent("d", () => (2)); //不存在
//    print(result2);//2   获取新的key的value
//    print(map20);//{a: 1, b: 2, c: 3, d: 2}   map改变

  ///cast()泛型提升为父祖类

  Map<String, int> map21 = {"a": 1, "b": 2, "c": 3};
  Map<Object, Object> map22 = map21.cast();
  map22["d"] = 33;
//    print(map22);//{a: 1, b: 2, c: 3, d: 33}

/// 添加
  map22.putIfAbsent('d', ()=> '3');

}
