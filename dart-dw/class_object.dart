/*
* @Author DingWen
* @Description 类和对象
* @Date 11:30 2020/8/2
**/

/*
  + 1.使用关键字class申明一个类
  + 2.使用关键字new创建一个对象，new可以省略
  + 3.所有对象都继承于Object类
  + 4.属性默认会生成getter和setter方法
  + 5.使用final申明的属性只有getter方法
  + 6.属性和方法通过 . 访问
  + 7.方法不能被重载
  + 8.通过初始化列表对final修饰的属性进行初始化
 */

import 'Person.dart';

void main() {
  //new 关键字可以省略
  var personOne = new Person();
  var personTwo = Person();
  personOne.name = 'dingwen';
  personOne.age = 23;
  personOne.work();
  print(personOne.name);
//  personOne.address = 'gz';
}
//
//class Person {
//  String name;
//  int age;
//  final String address = 'xs';
//  void work(){
//    print('name is $name,age is $age,he is working ....');
//  }
//}
