/// typedef 使用详细
/// dingwen
/// 2020/12/14

///typeof
///
///声明为简单类型

///typedef
/// 定义了返回值为num类型，带有两个[num]参数的Add(Function)类型
typedef num Add(num x, num y);

class TypedefDemo {
  TypedefDemo({this.add}) : assert(add != null);
  Add add;
}

void main() {
  num add(num x, num y) => x + y;

  print(TypedefDemo(add: add).add(12, 21));
  print(add.runtimeType);

}
