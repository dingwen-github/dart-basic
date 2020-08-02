/*
* @Author DingWen
* @Description 构造方法
* @Date 12:09 2020/8/2
**/

/*
  + 1.如果没有定义构造方法，则会有一个默认构造方法
  + 2.如果存在自定义构造方法，则默认构造方无效
  + 3.构造方法不能重载，可以有命名构造方法
  + 4.和为构造方法，及创建对象的时候调用的方法
  + 5.在构造方法中对属性进行初始化，可以是使用this.属性名的语法糖形式（该方式对属性赋值在构造方法执行之前，所有可以对final类型的变量进行初始化）
  + 6.常规方式的构造方法对属性进行初始化，不能对final类型的变量进行初始化
  + 7.使用命名构造方法，可以实现多个构造方法 类名称.方法的方式实现
  + 8.常量构造方法：如果类是不可变状态，可以把对象定义为编译期时常量。
  + 9.常量构造方法：使用const申明构造方法，并且所有变量都为final.使用const声明对象，可以省略
 */

void main(){
//  Person p = new Person();
//  p.work();

const  stu = const Student('1605410122', 99.0, 'dingwen');
//stu = Student('1605410122', 99.0, 'dingwen');
}

class Person{
  String name;
  int age;
  final String address;
  //默认构造方法
//  Person(){
//
//  }
//  Person(name,age,address){
//    this.name = name;
//    this.age =age;
//    //此方式不能对final类型的变量进行初始化
////    this.address = address;
//  }

  Person(this.name,this.age,this.address);

  //命名构造方法
  Person.withName(String name, this.address){

  }

  Person.age(this.age,this.address);

  void work(){
    print('working ....');
  }
}

//常量构造方法
class Student{
  final String id;
  final double score;
  final String name;
  const Student(this.id,this.score,this.name);
}

