/*
* @Author DingWen
* @Description 常量和变量
* @Date 16:32 2020/7/26
* @Param
* @return
**/

/*
1.使用var申明变量，可赋予不同类型的值
2.var 申明变量未初始化时为 null
3.final 申明一个只能赋值一次的变量
4.使用const申明一个常量
5.使用const申明的必须是编译期常量

 */
void main() {
  var a;
  print(a);
  a = 10;
  print(a);

  a = 'Hello Dart';

  print(a);

  //运行时确定的
  final b = 20;
//  b = 30;
//  b = 'Hello Dart';

  //编译时就已经确定的
  const c = 100;
//  c = 10;
}
