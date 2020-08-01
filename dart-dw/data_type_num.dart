/*
* @Author DingWen
* @Description
* @Date 15:18 2020/8/1
* @Param
* @return 
**/

/*
  1.int 和 double是num 的父类
  2.floor 向下取整
  3.ceil 向上取整
  4.0.0 /0.0 NaN
  5.round 四舍五入
  6.~/ 除法取整
 */
void main() {
  int a = 10;
//  int b =10.0;
  double c = 1;
  double d = 10.000000055555555555555555555555555;
  num e = 10;
  num f = 1.6;

  //不是一个数字
  print(0.0 / 0.0);

//  print( a + b);
  print(a + c);
  print(a - c);
  print(a * c);
  print(a / c);
  //取整操作
  print(a ~/ c);
  print(a % c);

  print(a.toInt());
  print(a.toDouble());
  print(a.isEven);
  print(a.isOdd);
  print(a.abs());
  print(a.round());
  //向上取整
  print(d.ceil());
  //向下取整
  print(d.floor());
}
