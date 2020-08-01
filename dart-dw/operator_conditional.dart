/*
* @Author DingWen
* @Description 条件运算符
* @Date 18:05 2020/8/1
**/
/*
  + ? 正常三木运算符
  + ?? 前者为空执行后者
 */
void main() {
  int gender = 0;
  String str = gender == 0 ? '男生' : '女生';
  print(str);

  String a = 'Java';
  String b = 'Dart';
  // 前者为null则执行后面的
  String c = b ?? a;
  print(c);
}
