import 'Person.dart';

///抽象类

/*
  + 1.抽象类使用abstract表示，不能直接被实例化
  + 2.抽象方法不用abstract修饰，无实现
  + 3.抽象类可以没有抽象方法
  + 4.有抽象方法的类一定要申明成抽象类
 */
void main(){
//  var person = new Person();
}

abstract class Person{

//  void work(){}
  void work();
}

class Student extends Person{
  @override
  void work() {
    print('work ....');
  }

}