///接口

/*
  + 1.类和接口是统一的，类就是接口
  + 2.每个类都隐式的定义了一个包含所有实例成员的接口
  + 3.如果是复用已有类的实现，使用继承（extends）
  + 4.如果只是使用已有类的外在行为，使用接口（implements）
 */
void main() {
//  var student = new Student('dingwen',23);
//  student.age = 10;
//  print(student.ageAdd);
//  print(student);
}

//class Person {
//  Person(this.name,this.age);
//
//  String name;
//  int age;
//  int get ageAdd => age + 1;
//
//  void run() {
//    print('person ....');
//  }
//}

//建议使用抽象类的方式作为接口
abstract class Person{
  void run();
}

class Student implements Person {

  @override
  void run() {
    print('student ...');
  }

}
