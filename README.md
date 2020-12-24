# dart-basic
Dart语言基础，创建于20200726
## Dart基础
### 第一章、开始
> main () 程序方法入口

### 第二章、数据类型
> `num`
+ 1.int 和 double是num 的子类
+ 2.floor 向下取整
+ 3.ceil 向上取整
+ 4.0.0 /0.0 NaN
+ 5.round 四舍五入
+6.~/ 除法取整

>  `var final const`

+ 1.使用var申明变量，可赋予不同类型的值
+ 2.var 申明变量未初始化时为 null
+ 3.final 申明一个只能赋值一次的变量
+ 4.使用const申明一个常量
+ 5.使用const申明的必须是编译期常量)

> `String`

+ 1.三个单引号或者双引号可输出多行文本
+ 2.\n 换行 \t tab
+ 3.引号前面加 r 不转义
+ 4.两个字符串相比较 == 比较的是内容
+ 5.差值表达式 ${} 只有一项的时候可以省略括号
+ 6.str * 10 字符串复制
+ 7.endsWith 是否以什么结束
+ 8.startWith 是否以什么结束
+ 9.split 以什么分隔，得到的是一个数组
+ 10.字符串连接 + 两个向量连接 'a' 'b' 空格两个字符串连接，必须是字符串不能是变量
+ 11.字符串转数字 int.parse() double.parse()
+ 12.数字转字符串 .toString() 保留进度 toStringAsFixed(位数)
+ 13.substring(start,end) 字符串截取前包后不包，只有一个参数的时候表示从当前index开始截取到最后
+ 14.splitMapJoin()查询“，”,用onMatch的返回值替换“，”用onNonMatch的返回值替换其他
+ 15.contains('a',[index]);当有两个参数时从index位置开始判断
+ 16.replaceAll(',','')
+ 17.replaceFirst('','',[index])当没有index表示，只替换第一个，有时表示从index开始第一个
+ 18.replaceRange(start,end,'')范围替换，前包后不包
+ 19.replaceAllMapped('',function,[index])从index开始 用方法返回值替换指定的字符串
+ 20.indexOf('',[index])
+ 21.lastIndexOf('',[index])
+ 22.toLowerCase()
+ 23.toUpperCase()
+ 24.trim() trimRight() trimLeft() 去除空格
+ 25.pad(index,[内容]) padRight(index,[内容]) padLeft(index,[内容])  补齐长度，默认以''
+ 26.compareTo() ascii码比较
+ 27.endsWith() 字符序列是此对象表示的字符序列的后缀，则返回 true；否则返回 false
       
       

> `bool`
>(true false)

> `List`
+ 1.在dart中数组和List是一样的概念
+ 2.indexOf() 查找元素所在位置，找到返回元素所在下标，没有找到则返回-1
+ 3.sort() 排序参数支持排序规则的方法 默认按照ascii码表排序
+ 4.add() 添加一个元素（从末尾添加）
+ 5.insert(index,value) 插入指定位置的元素
+ 6.forEach() 参数为一个方法 List 遍历
+ 7.不可变List List list = const [])
+ 8..sublist(start,end)//一个参数的时候表示，截取List中下标为start的值，两个参数的时候表示截取从start到end之间的值（前包后不包）（第二个为可选参数）
+ 9.list1.addAll(list2) //两个list合并，得到的list1是两个list合并的结果
+ 10.insertAll(index,list)  //在指定index处插入list其余顺延
+ 11.followedBy(list)将自身和参数内list合并成一个List，返回Iterable
+ 12.remove(obj)删除具体的元素
+ 13.removeAt(index)删除指定index位置元素
+ 14.removeLast()删除末尾元素
+ 15.removeRange(start,end)范围删除
+ 16.removeWhere()根据条件删除
+ 17.clear()清空数组
+ 18.修改指定index位置的值
+ 19.setRange(startIndex,endIndex,list)范围内修改List的值，含头不含尾
+ 20.replaceRange(start,end,list)范围内替换，含头不含尾
+ 21.fillRange(start,end,value)从start-end每个元素用value替换，含头不含尾
+ 22.retainWhere(()=>(bool));根据条件筛选元素
+ 23.setAll(index,list)从index开始，使用list内的元素逐个替换本list中的元素
+ 24.indexOf(element,[start]);从index处开始查找指定元素，返回指定元素的索引,从前往后
+ 25.lastIndexOf(obj,[start]);从index处开始查找指定元素，返回指定元素的索引，从后往前
+ 26.elementAt(index)获取指定索引位置的元素
+ 27.any((element) =>(bool))判断List中是否有任意一个元素符合给定的参数
+ 28.every((element)=>(bool))判断List中是否每个元素都符合参数的函数
+ 29.contains(obj)List中是否存在给定的obj
+ 30.firstWhere((element) => (bool))返回第一个满足条件的元素
+ 31.indexWhere((e)=>(bool))返回第一个满足元素的index
+ 32.lastIndexWhere((e)=>(bool))从后面往前找，返回第一个满足条件的元素的index
+ 33.lastWhere((e)=>(bool))从后面往前找，返回第一个满足条件的元素的值
+ 34.forEach() 遍历每一个元素
+ 35.map()遍历现有List的每一个元素，并做处理，返回一个新的Iterable
+ 36.fold(initValue,(preValue,element)=>())根据现有的List和给定的initValue指定一个参数函数规则，对List每个元素做操作，并将结果返回
+ 37.reduce((a,b)=>())用指定的方法对元素做连续操作，将结果返回
+ 38.skip(count)越过count个元素后，开始返回list的Iterable+
+ 39.skipWhile((e)=>(bool))根据参数函数。找到第一个不符合条件的元素，然后将其及其后的元素返回
+ 40.take(count)从0开始取count个元素，并返回结果
+ 41.takeWhile((e)=>(bool))从0开始取，直至第一个不符合函数的元素，将其前面的元素都返回
+ 42.where((e)=>(bool))根据指定参数函数筛选每个元素，符合条件的元素组成一个新的Iterable
+ 43.singleWhere((e)=>(bool))找到唯一满足条件的元素
+ 44.whereType()从无指定泛型的List中，筛选出指定类型的数据
+ 45.cast()将List的泛型提升到其父类
+ 46.expand()根据现有的List,指定一个规则，生成一个新的List
+ 47.toSet()将List转为Set去除后面重复的元素
+ 48.asMap() 将list转为Map
+ 49.shuffle() List内元素，重新随机排列
+ 50.sort()List自身排序
+ 51.sublist(start,[index])从指定index截取list,含头不含尾
+ 52.length
+ 53.isEmpty
+ 54.isNotEmpty
+ 55.reversed
+ 56.first
+ 57.last
+ 58. toSet().toList() 数组去重

> `Map`
+ 1.Map的key value 可以是任意类型
+ 2.length
+ 3.isEmpty
+ 4.isNotEmpty
+ 5.keys 得到所有的key _CompactIterable<dynamic>
+ 6.values 得到所有的value  _CompactIterable<dynamic>
+ 7.containsKey('')  containsValue('')
+ 8.remove() //参数为key
+ 9.List 转 Map 默认会以下标为key list的内容为value 下标从零开始
+ 10.forEach() //参数为一个方法 使用见代码)
+ 11.cast()泛型提升为父祖类
+ 12.putIfAbsent()存在key就获取值，不存在则添加到map然后返回值
+ 13.addEntries()合并两个map如果key有重复，被合并的map的value覆盖前者
+ 14.addAll()整体合并另一个map，泛型要一致
+ 15.removeWhere()根据条件批量删除
+ 16.putIfAbsent() 添加(key,返回value的方法)

> `dynamic`
> 动态数据类型

### 第三章、运算符

> `算数运算符`
  + \+
  + \-
  + \*
  + \/
  + ~/ 除法取整
  + % 求余数
  + ++
  + --

> `逻辑运算符`

  + !
  + &&
  + ||
  
>  `赋值运算符`

  + ==
  + ?== 当前者为null时执行后面
  + +=
  + -=
  + *=
  + /= 被除数需要是double类型
  + ~/= ~/
 
> `关系运算符`

 + \>
 + <
 + =
 + ==
 + \>=
 + <=
 + !=
 + 两个字符串比较 == 比较的是内容
 
>   `条件运算符`

 + ? 正常三木运算符
 + ?? 前者为空执行后者
 
 ### 第三章、控制语句
 
 > `if`
  + 和其他语言一致
  
 > `for for in `
  + 和其他语言一致
  
>` while 、do while `
   + 和其他语言一致
   
> `switch case`
  + 1.比较类型： num ,String ,编译器常量，对象，枚举
  + 2.非空case必须有一个break;
  + 3.default处理默认情况
  + 4.continue跳转
  + 5.可以加标签跳转，用法看代码
   
> `break continue`
   + 和其他语言一致 
   
### 第四章、方法

> `Funtion {} [] 可选位置参数、可选命名参数、参数默认值`
  + 1.在Dart中方法也是对象，并且有具体的类型Function
  + 2.返回值类型、参数类型都可以省略
  + 3.箭头语法 => expr  是{return expr;}的缩写。只适用于一个表达式
  + 4.方法都有返回值，如果没有指定默认返回一个null
  + 5.箭头语法不能写rerun
  + 6.三目运算可以写箭头语法
  + 7.可选参数： {} 可选命名参数 []可选位置参数
  + 8.必须参数只能放在第一，可选参数放在后面
  + 9.使用 = 在可选参数指定默认值，默认值只能是编译期的常量
  + 10.可选参数默认值：没有传递参数的时候使用，传递参数时则使用传递的参数
  + 11.方法对象：方法可以作为对象赋值给其他变量，方法可以作为参数传递给其他方法
  
 > `方法对象`
   + 1.方法对象：方法可以作为对象赋值给其他变量，方法可以作为参数传递给其他方法
   + 2.当将方法作为变量赋值时。写方法名称即可，变量加小括号调用
   + 3.当将方法作为参数传递的时候，也是写明方法名称即可。注意不能使用可选命名参数
   
 > `匿名方法`
  + 1.可赋值给变量，通过变量进行调用
  + 2.可在其他方法中调用或传递给其他方法

 > `闭包`
  + 1.闭包是一个方法（对象）
   + 2.闭包定义在其他方法内部
   + 3.闭包是定义在方法内部的方法
   + 4.闭包能访问外部方法内的局部变量，并持有其状态
   
### 第五章、面向对象

> `class and Object`
 + 1.使用关键字class申明一个类
 + 2.使用关键字new创建一个对象，new可以省略
 + 3.所有对象都继承于Object类
 + 4.属性默认会生成getter和setter方法
 + 5.使用final申明的属性只有getter方法
 + 6.属性和方法通过 . 访问
 + 7.方法不能被重载
 + 8.通过初始化列表对final修饰的属性进行初始化
 
 > `计算属性`
  + 1.顾名思义，计算属性的值是通过计算而来，本身不存储值
  + 2.计算属性赋值，其实就是通过计算转换到其他实例变量
  
 > `constuctor`
  + 1.如果没有定义构造方法，则会有一个默认构造方法
  + 2.如果存在自定义构造方法，则默认构造方无效
  + 3.构造方法不能重载，可以有命名构造方法
  + 4.和为构造方法，及创建对象的时候调用的方法
  + 5.在构造方法中对属性进行初始化，可以是使用this.属性名的语法糖形式（该方式对属性赋值在构造方法执行之前，所有可以对final类型的变量进行初始化）
  + 6.常规方式的构造方法对属性进行初始化，不能对final类型的变量进行初始化
  + 7.使用命名构造方法，可以实现多个构造方法 类名称.方法的方式实现
  + 8.常量构造方法：如果类是不可变状态，可以把对象定义为编译期时常量。
  + 9.常量构造方法：使用const申明构造方法，并且所有变量都为final.使用const声明对象，可以省略
  
 > `factory constructor`
  + 1.工厂构造方法类似于设计模式中的工厂模式
  + 2.在构造方法前添加关键字factory实现一个工厂构造方法
  + 3.在工厂构造方法中可以返回对象
  + 4.map初始化 `static final Map<String,Logger> _cache = <String,Logger>{};`
  + 5.final属性的赋值需要在构造方法执行之前进行
  
  > `初始化列表`
  + 1.初始化列表会在构造方法执行之前执行
  + 2.使用逗号分隔初始化表达式
  + 3.初始化列表常用于设置final变量的值
  
 > `call()`
  + 1.如果类实现了call()方法，则该类的对象可以作为方法使用
  + 2.方法只要是call名称，返回值和参数可以根据需要指定
  
> `对象操作符`
+ 1.?.  条件成员访问 不为null时执行
+ 2.类型转换 as
+ 3.是否制定类型 is is!
+ 4.级联操作 ..

> `static`
  + 1.使用static关键字来实现类级别的变量和函数
  + 2.静态成员不能访问非静态成员，非静态成员可以访问静态成员
  + 3.类中的常量需要使用static const 申明

> `extends`
  + 1.使用关键字extends继承一个类
  + 2.子类会继承父类可见的属性和方法，不会继承构造方法
  + 3.子类能够复写父类的方法、getter和setter
  + 4.单继承、多态性(父类引用指向子类对象)
  
> 继承中的构造方法
  + 1.子类的构造方法默认会调用父类的无名无参构造方法
  + 2.如果父类没有无名无参构造方法，则需要显示调用父类的构造方法
  + 3.在构造方法参数后使用 : 显示调用父类构造方法
  + 4.父类的构造方法在子类的构造方法体开始执行的位置调用
  + 5.如果有初始化列表，初始化列表会在父类的构造方法之前执行

> `abstract class`
  + 1.抽象类使用abstract表示，不能直接被实例化
  + 2.抽象方法不用abstract修饰，无实现
  + 3.抽象类可以没有抽象方法
  + 4.有抽象方法的类一定要申明成抽象类
  
> `interface`建议使用抽象类的方式作为接口
  + 1.类和接口是统一的，类就是接口
  + 2.每个类都隐式的定义了一个包含所有实例成员的接口
  + 3.如果是复用已有类的实现，使用继承（extends）
  + 4.如果只是使用已有类的外在行为，使用接口（implements）
  
> `Mixins` 多继承
   + 1.Mixins类似于多继承，是在多类继承中重用一个类代码的方式
   + 2.作为Mixin的类不能有显式的构造方法
   + 3.作为Mixin的类只能继承紫Object
   + 4.使用关键字with连接一个或多个mixin

> `operator`操作符复写

> `enum`枚举
   + 1.枚举是一种有穷序列集的数据类型
   + 2.使用关键字enum定义一个枚举
   + 3.常用于代替常量，控制语句等
   + 4.index从0开始
   + 5.不能指定原始值
   + 6.不能写方法
   
> `DateTime` 
  + 1.DateTime.now()
  + 2.DateTime([int month = 1,int day = 1,int hour = 0,int minute = 0,int second = 0,int millisecond = 0,int microsecond = 0]);
  + 3.DateTime.utc(int year,[int month = 1, int day = 1,int hour = 0,int minute = 0,int second = 0,int millisecond = 0,int microsecond = 0]);
  + 4.解析时间 ISO 8601 DateTime.parse('')
  + 5.时间增减量add(new Duration(minutes: 5))    add(new Duration(minutes: -5))
  + 6.时间比较 isAfter中(param)是否在param之后
  + 7.时间比较 isBefore(param)是否在param之前
  + 8.时间差 difference  print([difference.inDays, difference.inHours]);//d1与d2相差的天数与小时
  + 9.时间戳  print(now.millisecondsSinceEpoch);//单位毫秒，13位时间戳 print(now.microsecondsSinceEpoch);//单位微秒,16位时间戳
  + 10.padLeft(int width,String padding)：如果字符串长度小于width，在左边填充padding
  + 11.防止某一段代码重复执行
  
> 异步编程
  + 1.在Dart中与Promise对应的是Future
  + 2.Dart是单线程的，没有线程抢占，数据安全
  + 3.Future对象封装了Dart的异步操作，两种状态（uncompleted）(completed)
  + 4.在Dart中，所有涉及到IO的函数都封装成一个Future对象返回，在你调用一个异步函数的时候，在结果或者错误返回之前，你得到的是一个uncompleted状态的Future
  + 5.completed也有两种状态，一种代表成功返回结果，一种代表失败返回错误
  + 6.FutureOr<T> 是个特殊的类型，它没有类成员，不能实例化，也不可以继承，看来它很可能只是一个语法糖 受限制的dynamic类型，因为它只能接受Future<T>或者T类型的值 请避免声明函数返回类型为FutureOr<T>
  + 7.如果Future内的函数执行发生异常，可以通过Future.catchError来处理异常
  + 8.Future支持链式调用
  + 9.申明了async的函数，返回值必须是Future对象。即便你在async函数里面直接返回T类型的数据，编译器会自动帮你包装成Future<T>类型的对象。如果是void函数则返回Future<void>
  + 10.在遇到await的时候，又会把Future类型拆包，原来的数据类型暴露出来
  + 11.await所在的函数必须添加async关键字
  + 12.事件循环 （Event Loop）  isolate 
  + 13.事件队列：用来处理外部的事件，如果IO、点击、绘制、计时器（timer）和不同 isolate 之间的消息事件等。
  + 14.微任务队列：处理来自于Dart内部的任务，适合用来不会特别耗时或紧急的任务，微任务队列的处理优先级比事件队列的高，如果微任务处理比较耗时，会导致事件堆积，应用响应缓慢。
  + 15.你可以通过Future.microtask 来向isolate提交一个微任务
  + 16.多线程 在Dart中，你可以通过Isolate.spawn 来创建一个新的isolate
  
  
  ### 六、正则表达式使用
  ```dart
/*
* @Author DingWen
* @Description 正则表达式使用
* @Date 17:40 2020/12/7
**/
void main(){
  RegExp exp = new RegExp(r"^[0-9]\d*$");
  print(exp.hasMatch('12646546154165'));
}
```

### 七、其他补充
#### `typedef`
    给类型取一个别名
   ```dart
/// typedef 使用详细
/// dingwen
/// 2020/12/14

///typeof
///
///声明为简单类型

///typedef
/// 定义了返回值为num类型，带有两个[num]参数的Add(Function)类型
typedef num Add(num x, num y);

class TypedefDemo {
  TypedefDemo({this.add}) : assert(add != null);
  Add add;
}

void main() {
  num add(num x, num y) => x + y;

  print(TypedefDemo(add: add).add(12, 21));
  print(add.runtimeType);

}

```
    