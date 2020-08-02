/*
* @Author DingWen
* @Description
* @Date 14:44 2020/8/2
**/

/*
  + 1.Object是所有类的父类
 */
class PersonTwo extends Object{
  String name;
  int age;
  String _birthday;
  bool get isAdult => age > 18;

  void run(){
    print('student run ...');
  }

  @override
  String toString() {
    return 'name=$name,age=$age';
  }
}