///泛型

void main(){
  var list = new List<int>();
//  list.add('');//默认dynamic类型
  var utils = new Utils();
  utils.test('1');
  utils.test2('element');
  utils.test2(122);
}

//类泛型
class Utils<T>{
  void test(T text){
    print(text);
  }

  //方法泛型
  void test2<T>(T element){
    print(element);
  }
}