/*
* @Author DingWen
* @Description switch case
* @Date 18:40 2020/8/1
**/
/*
  + 1.比较类型： num ,String ,编译器常量，对象，枚举
  + 2.非空case必须有一个break;
  + 3.default处理默认情况
  + 4.continue跳转
  + 5.可以加标签跳转，用法看代码
 */
void main() {
  String str = 'Dart';
  switch (str) {
  //标签随便写
    C : case 'Dart':
      print('Dart');
      //跳转标签
      continue C;
      break;
    case 'Java':
      print('Java');
      break;
    default:
      print(123);
  }
}