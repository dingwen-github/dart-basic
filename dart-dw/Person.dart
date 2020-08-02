/*
* @Author DingWen
* @Description Person类
* @Date 11:45 2020/8/2
**/

/*
  + 1.类及成员可见性
  + 2.Dart中的可见性以library(库)为单位
  + 3.默认情况下一个Dart文件就是一个library(库)
  + 4.使用_表示私有性，包括类、属性等。
  + 5.是哟用import导入库
 */
class Person{
  String name;
  int age;
  final String _address = 'xs';

  void work(){
    print('name is $name,age is $age');
  }
}