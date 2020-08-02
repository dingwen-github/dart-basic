/*
* @Author DingWen
* @Description 方法对象
* @Date 20:49 2020/8/1
**/
/*
   + 1.方法对象：方法可以作为对象赋值给其他变量，方法可以作为参数传递给其他方法
   + 2.当将方法作为变量赋值时。写方法名称即可，变量加小括号调用
   + 3.当将方法作为参数传递的时候，也是写明方法名称即可。注意不能使用可选命名参数
 */
void main() {
  //将方法赋值给变量
  var function = printHello;
  //加小括号调用
  function();
  printHello();
  List list = ['talk', 'is', 'cheap', 'show', 'me', 'the', 'code'];
  //方法名称作为参数传递
  list.forEach(print);
  //方法作为参数传递时，方法名即可
  print(listCopyThree(list, threeTimes));
}

void printHello() {
  print('hello');
}

List listCopyThree(List list, threeTimes(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = threeTimes(list[index]);
  }
  return list;
}

//此处不能使用可选命名参数,可以使用可选位置参数和普通参数
String threeTimes([str]) {
  return str * 3;
}
