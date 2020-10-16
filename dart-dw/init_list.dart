/*
* @Author DingWen
* @Description 初始化列表
* @Date 13:10 2020/8/2
**/

/*
  + 1.初始化列表会在构造方法执行之前执行
  + 2.使用逗号分隔初始化表达式
  + 3.初始化列表常用于设置final变量的值
 */

void main() {
  var person = new Person('dingwen', 23, 'xs');
}

class Person {
  String name;
  int age;
  final String address;

  Person(this.name, this.age, this.address);

  //初始化列表：对final变量进初始化
  Person.withMap(Map map)
      : address = map['address'],
        name = map['name'] {
    this.age = age;
  }

  void work() {
    print('work ...');
  }
}
