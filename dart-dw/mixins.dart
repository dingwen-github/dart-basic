///mixins

/*
  + 1.Mixins类似于多继承，是在多类继承中重用一个类代码的方式
  + 2.作为Mixin的类不能有显式的构造方法
  + 3.作为Mixin的类只能继承紫Object
  + 4.使用关键字with连接一个或多个mixin
 */

void main() {
  var d = new D();
  d.a();
  d.b();
  d.c();
}

class A{
  void a(){
    print('A.a()..');
  }
}

class B{
  void b(){
    print('B.b()..');
  }
}


class C{
//  C(){
//
//  }
  void c(){
    print('C.c()..');
  }
}

/*
  先试用继承才能使用with
  如果A B C里面都有相同的方法会调用最后一个
 */
class D extends A with B,C{

}
