///继承中的构造方法
/*
  + 1.子类的构造方法默认会调用父类的无名无参构造方法
  + 2.如果父类没有无名无参构造方法，则需要显示调用父类的构造方法
  + 3.在构造方法参数后使用 : 显示调用父类构造方法
  + 4.父类的构造方法在子类的构造方法体开始执行的位置调用
  + 5.如果有初始化列表，初始化列表会在父类的构造方法之前执行
 */

void main() {
  var student = new Student('dingwen');
  print(student);
}

class Person {
  String name;

//  Person(){
//    print('person');
//  }
  Person(this.name);

  Person.withName(this.name);
}

class Student extends Person {
  int age;

//  Student(String name) : super(name);
  Student(String name) : super.withName(name);

  @override
  String toString() {
    return '$age,$name';
  }
}
