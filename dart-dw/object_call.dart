/*
* @Author DingWen
* @Description 对象call方法
* @Date 14:25 2020/8/2
**/

/*
  + 1.如果类实现了call()方法，则该类的对象可以作为方法使用
  + 2.方法只要是call名称，返回值和参数可以根据需要指定
 */

void main() {
  Person()
    ..name = 'dingwen'
    ..age = 23
    ..work();

  var p1 = new Person();
  p1('dingwen', 23);
}

class Person {
  String name;
  int age;

  Person({this.age, this.name});

  void work() {
    print('name is $name,age is $age');
  }

  void call(name, age) {
    print('name is $name,age is $age');
  }
}
