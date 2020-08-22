/*
* @Author DingWen
* @Description List 常用方法以及属性
* @Date 11:53 2020/8/22
**/

void main() {
  //申明
  //不限定长度，不限定类型，可添加任意类型的数据
  var list1 = List();
  List list2 = List();
  //限定了长度为2，越界会报错，不限定类型，可添加任意类型的数据
  List list3 = List(2);

  ///add() 在list末尾进行添加
  list1.add(1);
  list1.add('aaa');
  list1.add(true);
//  print(list1);

  //初始就赋值了，限定了长度，限定了类型，只能是int
  var list4 = [1, 2, 3];
  //初始就赋值了，限定了长度，为限定类型，任意位置可用任意类型替换
  var list5 = [2, '3', false];
  //初始赋值，限定了长度未限定类型，任意位置可用任意类型替换
  List list6 = ['a', 2, 'b', false];
  list5[1] = 2;
  list5[2] = 'a';
//  print(list5);

  var list7 = <String>['a', 'b'];
  List<String> list8 = ['a', 'b'];
  List<String> list9 = new List(2);
  list8[0] = ('aaa');
  list8[0] = 'bbb';

  ///常用属性
  List<String> list10 = List();
  list10.add('aaa');
  list10.add('bbb');
  list10.add('ccc');

  /// 长度
  print(list10.length);

  ///是否为空
  print(list10.isEmpty);

  ///是否不为空
  print(list10.isNotEmpty);

  ///返回一个List的倒序排列的Iterable,不改变原List
  print(list10.reversed);

  ///第一个元素
  print(list10.first);

  ///最后一个元素
  print(list10.last);

  ///常用方法

  ///add()添加一个元素到List末尾
  List<String> list11 = List();
  list11.add('aaa');
  list11.add('bbb');
  print(list11);

  ///addAll()两个List合并
  List<String> list12 = List();
  list12.add('ccc');
  list12.add('ddd');
  list11.addAll(list12);
  //执行后list11为最后合并的结果,前者在前往后顺延
  print(list11); //[aaa,bbb,ccc,ddd]

  ///insert(index,element)在指定index处插入值，其余顺延
  List<int> list13 = List();
  list13.add(0);
  list13.add(1);
  list13.add(2);
  list13.add(3);
  print(list13); // [0,1,2,3]

  ///insertAll(index,list) 在指定index处插入list其余顺延
  List<int> list14 = [4, 5, 6];
  list13.insertAll(1, list14); //[0,4,5,6,1,2,3]

  list13.insertAll(1, [7, 8, 9]);

  ///followedBy(list)将自身和参数内list合并成一个List，返回Iterable
  Iterable<int> list15 = list14.followedBy([6, 7]); //[]
  print(list15.toList());
  //growable false 表示生成的List长度固定，不可再增加新元素
  List list16 = list15.toList(growable: false);
//  print(list16.add('value'));

  ///remove(obj)删除具体的元素
  ///removeAt(index)删除指定index位置元素
  ///removeLast()删除末尾元素
  ///removeRange(start,end)范围删除
  ///removeWhere()根据条件删除

  List<String> list17 = List();
  list17.add('aaa');
  list17.add('bbb');
  list17.add('ccc');
  list17.add('ddd');
  list17.add('eee');
  list17.add('fff');
  print(list17); //[aaa,bbb,ccc,ddd,eee,fff]
  //删除末尾元素
  list17.removeLast();
  //删除索引从0-2的元素，含头不含尾
  list17.removeRange(0, 2);
  //根据条件筛选删除，这里表示删除元素值为ddd的元素
  list17.retainWhere((element) => element == 'ddd');

  ///clear()清空数组
  list17.clear();

  ///修改指定index位置的值
  list13[0] = 2;

  ///setRange(startIndex,endIndex,list)范围内修改List的值，含头不含尾
  List<String> list18 = List();
  list18.add('aaa');
  list18.add('bbb');
  list18.add('ccc');
  list18.add('ddd');

  List<String> list19 = List();
  list19.add('111');
  list19.add('222');
  list19.add('333');
  list19.add('444');
  list19.add('555');
  list19.add('666');
  //范围修改，从list19取出 0 1 2位置的值对应修改list18 0 1 2位置的值
  list18.setRange(0, 3, list19);
  print(list18); //[111, 222, 333, ddd]

  ///replaceRange(start,end,list)范围内替换，含头不含尾

  ///fillRange(start,end,value)从start-end每个元素用value替换，含头不含尾

  ///retainWhere(()=>(bool));根据条件筛选元素
  List<int> list20 = List();
  list20.add(0);
  list20.add(1);
  list20.add(2);
  list20.add(3);

  list20.retainWhere((element) => (element > 2));

  ///setAll(index,list)从index开始，使用list内的元素逐个替换本list中的元素
  List<int> list32 = List();
  list32.add(0);
  list32.add(1);
  list32.add(2);
  list32.add(3);
  list32.add(4);
//    print(list32);//[0, 1, 2, 3, 4]
  //从指定index位置开始使用arr的值进行替换替换，index+arr.length必须<=list32.length   否则报错
  list32.setAll(2, [7, 6]);
//    print(list32);//[0, 1, 7, 6, 4]

  ///indexOf(element,[start]);从index处开始查找指定元素，返回指定元素的索引,从前往后

  ///lastIndexOf(obj,[start]);从index处开始查找指定元素，返回指定元素的索引，从后往前

  ///elementAt(index)获取指定索引位置的元素

  ///any((element) =>(bool))判断List中是否有任意一个元素符合给定的参数
  List<String> list36 = List();
  list36.add("aaa");
  list36.add("bbb");
  list36.add("ccc");
  list36.add("ddd");
  list36.add("eee");
//    print(list36);// [aaa, bbb, ccc, ddd, eee]
  //判断list元素中是否有任何一个元素满足给定的条件，如果满足返回true 否则false
  bool result = list36.any((element) => (element == "d"));
//    print(result);//false

  ///every((element)=>(bool))判断List中是否每个元素都符合参数的函数
  List<int> list41 = [1, 2, 3, 4, 5];
  bool result4 = list41.every((element) => (element % 2 == 0));
  bool result5 = list41.every((element) => (element > 0));

  ///contains(obj)List中是否存在给定的obj

  ///firstWhere((element) => (bool))返回第一个满足条件的元素
  ///indexWhere((e)=>(bool))返回第一个满足元素的index
  ///lastIndexWhere((e)=>(bool))从后面往前找，返回第一个满足条件的元素的index
  ///lastWhere((e)=>(bool))从后面往前找，返回第一个满足条件的元素的值
  List<int> list49 = [3, 4, 1, 2, 5];
  int result20 = list49.lastWhere((e) => e > 2); //从后往前找，返回第一个满足条件的元素的值(不是index)
  //print(result20);//5
  //int result22 = list49.lastWhere((e)=>e>22);//从后往前找，返回第一个满足条件的元素的值(不是index)，没有找到则报错
  int result21 = list49.lastWhere((e) => e > 11,
      orElse: () => (44)); //从后往前找，返回第一个满足条件的元素的值(不是index),如果没有，则返回orElse的方法返回值
  //print(result21);//44

  ///forEach() 遍历每一个元素
  List<int> list47 = [3, 4, 1, 2, 5];
  list47.forEach((element) {
    //遍历每个元素  此时不可add或remove  否则报错 但可以修改元素值，
    element += 1;
//      print(element);//依次输出：4   5  2  1  6
    list47[3] = 0; //直接修改list对应index的值
    list47[0] = 0;
  });
//    print(list47);// [0, 4, 1, 0, 5]

//for  List遍历每个元素
  for (var x in list47) {
    print(x); //0  4  1  0   5
  }

  ///map()遍历现有List的每一个元素，并做处理，返回一个新的Iterable
  List<int> list51 = [3, 4, 1, 2, 3];
  Iterable<String> result25 = list51.map((e) => (e > 2 ? 'a' : 'b'));
  //    print(result25);//(a, a, b, b, a)
  Iterable<bool> result26 = list51.map((e) => (e > 2));
//    print(result26);//(true, true, false, false, true)

  ///fold(initValue,(preValue,element)=>())根据现有的List和给定的initValue指定一个参数函数规则，对List每个元素做操作，并将结果返回

  List<int> list44 = [1, 2, 3, 4, 5, 6];
  //2为初始值。后面的方法定义初始值和List之间的操作方式，并将结果返回
  int result10 = list44.fold(2, (a, element) => (a * element));//2*(1*2*3*4*5*6)
  int result11 = list44.fold(2, (a,element)=>(a+element));//2+(1+2+3+4+5) = 17

  ///reduce((a,b)=>())用指定的方法对元素做连续操作，将结果返回
  List<int> list52 = [3,4,1,2,5];
  int result52 = list52.reduce((a,b) => (a+b));//3+4+1+2+5

  ///skip(count)越过count个元素后，开始返回list的Iterable
  ///skipWhile((e)=>(bool))根据参数函数。找到第一个不符合条件的元素，然后将其及其后的元素返回

  List<int> list54 = [3, 4, 1, 2, 5];
  Iterable<int> result30 = list54.skip(2);//越过count个元素后，开始返回list的Iterable
//    print(result30);//(1, 2, 5)
  Iterable<int> result31 = list54.skip(3);
//    print(result31);//(2, 5)
  Iterable<int> result32 = list54.skipWhile((e)=>(e>2));//从第一个元素开始，逐个判断是否符合参数函数，直至第一个不符合的元素，将其及其后面的元素返回
//    print(result32.toList());//[1, 2, 5]
  Iterable<int> result35 = list54.skipWhile((e)=>(e<4));//从第一个元素开始，逐个判断是否符合参数函数，直至第一个不符合的元素，将其及其后面的元素返回
//    print(result35.toList());//[4, 1, 2, 5]
  Iterable<int> result36 = list54.skipWhile((e)=>(e>0));//从第一个元素开始，逐个判断是否符合参数函数，直至第一个不符合的元素，将其及其后面的元素返回，如果都符合，返回一个空数组
//    print(result36.toList());//[]
  Iterable<int> result37 = list54.skipWhile((e)=>(e<0));//从第一个元素开始，逐个判断是否符合参数函数，直至第一个不符合的元素，将其及其后面的元素返回，如果都不符合，全部返回。都不符合其实就是第一个就不符合，因此将第一个及后面的返回。
//    print(result37.toList());//[3, 4, 1, 2, 5]

  ///take(count)从0开始取count个元素，并返回结果
  ///takeWhile((e)=>(bool))从0开始取，直至第一个不符合函数的元素，将其前面的元素都返回
  List<int> list55 = [3, 4, 1, 2, 5];
  Iterable<int> result33 = list55.take(2);//从0开始取2个元素  并返回
//    print(result33);//(3, 4, 1)
  Iterable<int> result34 = list55.takeWhile((e)=>(e>2));//从第一个元素开始，逐个判断是否符合参数函数，直至第一个不符合的元素，将其前面元素都返回
//    print(result34);//(3, 4)

///where((e)=>(bool))根据指定参数函数筛选每个元素，符合条件的元素组成一个新的Iterable

  List<int> list57 = [3, 4, 1, 2, 5,2,3,6];
  Iterable<int> result39 = list57.where((e)=>(e>2));//根据参数函数筛选
  //print(result39);//(3, 4, 5, 3, 6)

  ///singleWhere((e)=>(bool))找到唯一满足条件的元素
  List<int> list53 = [3, 4, 1, 2, 5];
  //找到那唯一满足条件的元素，如果没有满足条件的元素或有多个元素满足条件，就返回orElse方法的返回值，如果没有传入orElse则报错。
  int result29 = list53.singleWhere((e)=>(e>4),orElse: ()=>(10));
//    print(result29);//5


  ///whereType()从无指定泛型的List中，筛选出指定类型的数据
  List list58 = [3, 4, "a",true,"b",5,false];
  Iterable<int> result40 = list58.whereType();//从混合类型的List中，筛选出指定类型的数据
  print(result40);//(3, 4, 5)
  Iterable<String> result41 = list58.whereType();
  print(result41);//(a, b)
  Iterable<bool> result42 = list58.whereType();
  print(result42);//(true, false)

  ///cast()将List的泛型提升到其父类
  List<String> list37 = List();
  list37.add("aaa");
  list37.add("bbb");
  list37.add("ccc");
  list37.add("ddd");
  list37.add("eee");
//    print(list37);// [aaa, bbb, ccc, ddd, eee]
  List<Object> list38 = list37.cast();//类型提升，将当前List<String> 提升为泛型的父祖类  List<Object>
  list38.add('2222');//必须添加同类型的元素   如果list38.add(2)  则报错
//    print(list38);//[aaa, bbb, ccc, ddd, eee, 222]

///expand()根据现有的List,指定一个规则，生成一个新的List

  List<int> list42 = [1, 2, 3, 4, 5];
  Iterable<int> result6 = list42.expand((element)=>([element+1,element+2]));//通过对元素操作，返回一组指定规则的新的集合
//    print(result6);//(2, 3, 3, 4, 4, 5, 5, 6, 6, 7)
//    print(result6.toList());//[2, 3, 3, 4, 4, 5, 5, 6, 6, 7]

  ///toSet()将List转为Set去除后面重复的元素
  List<int> list56 = [3, 4, 1, 2, 5,2,3,6];
  Set<int> result38 = list56.toSet();//将list转为set,将后面重复的都去掉
  //print(result38);//{3, 4, 1, 2, 5, 6}

  ///asMap() 将list转为Map
  List<String> list33 = List();
  list33.add("aaa");
  list33.add("bbb");
  list33.add("ccc");
  list33.add("ddd");
  list33.add("eee");
//    print(list33);// [aaa, bbb, ccc, ddd, eee]
  Map<int,String> map = list33.asMap();//list转为map  key为index  value为list的值
//    print(map);//{0: aaa, 1: bbb, 2: ccc, 3: ddd, 4: eee}


  ///shuffle() List内元素，重新随机排列

  List<String> list35 = List();
  list35.add("aaa");
  list35.add("bbb");
  list35.add("ccc");
  list35.add("ddd");
  list35.add("eee");
//    print(list35);// [aaa, bbb, ccc, ddd, eee]
  list35.shuffle();//元素重新随机排列
//    print(list35);//[ddd, eee, aaa, ccc, bbb]


  ///sort()List自身排序
  List<int> list30 = List();
  list30.add(2);
  list30.add(3);
  list30.add(1);
  list30.add(0);
//    print(list30);//[2, 3, 1, 0]
  //升序
  list30.sort((a,b)=>(a>b ? 1 : -1));//自身排序  修改本身的list
    print(list30);//[0, 1, 2, 3]

  ///sublist(start,[index])从指定index截取list,含头不含尾

  List<int> list21 = List();
  list21.add(0);
  list21.add(1);
  list21.add(2);
  list21.add(3);
  print(list21);//[0, 1, 2, 3]
  list21.insert(1, 5);  //指定索引位置 插入值，其余顺延
  print(list21);// [0, 5, 1, 2, 3]
  List<int> list22 = list21.sublist(1);//从指定索引截取List
  List<int> list23 = list21.sublist(1,3);//从指定索引截取List  含头不含尾
  print(list22);//[5, 1, 2, 3]
  print(list23);//[5, 1]
}
