/*
* @Author DingWen
* @Description 赋值运算符
* @Date 17:57 2020/8/1
**/
/*
  + ==
  + ?== 当前者为null时执行后面
  + +=
  + -=
  + *=
  + /= 被除数需要是double类型
  + ~/= ~/

 */
void main() {
  int a = 10;
  int b = 5;
  int c;
  c ??= 20; //如果c为null则执行后面的 20
  a += 2;
  a *= b;
  //被除数需要是一个double类型
//  a /= b;
  a ~/= b;
  a %= b;
  a -= b;

  print(c);
}
