/*
* @Author DingWen
* @Description 继承
* @Date 14:40 2020/8/2
**/

/*
  + 1.使用关键字extends继承一个类
  + 2.子类会继承父类可见的属性和方法，不会继承构造方法
  + 3.子类能够复写父类的方法、getter和setter
  + 4.单继承、多态性(父类引用指向子类对象)
 */

import 'PersonTwo.dart';

void main() {
  Teacher()
    ..talk()
  //父类的属性
    ..name = 'dingwen'
    ..age = 23;
  //父类私有属性
//      ..address

//多态
  PersonTwo p1 = new Teacher();
  PersonTwo p2 = new Student();
  p1.run();
  p2.run();
}

class Teacher extends PersonTwo {
  void talk() => print('talking ...');

  //复写方法
  @override
  bool get isAdult => age > 15;

  @override
  void run() {
    print('teacher run ..');
  }
}

class Student extends PersonTwo {
  Student({this.name});

  String name;

  @override
  void run() {
    print('student run ...');
  }
}
