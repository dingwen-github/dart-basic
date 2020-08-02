/*
* @Author DingWen
* @Description 对象操作符
* @Date 14:10 2020/8/2
**/

/*
+ 1. ?.  条件成员访问 不为null时执行
+ 2.类型转换 as
+ 3.是否制定类型 is is!
+ 4.级联操作 ..
 */
void main() {
  Person p;
  p?.work();
  var p1;
//   p1 = new Person('dingwen', 23);
//    p1 = 'd';
//  (p1 as Person).work();

  if (p1 is Person) {
    p1.work();
  }

  if (p1 is! Person) {
    print('ps not Person');
  }

  //级联操作
  Person()
    ..age = 23
    ..name = 'dingwen'
    ..work();
}

class Person {
  String name;
  int age;

  Person([this.name, this.age]);

  void work() {
    print('working ...name=$name,age=$age');
  }
}
