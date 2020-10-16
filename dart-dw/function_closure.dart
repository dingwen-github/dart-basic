/*
* @Author DingWen
* @Description 闭包
* @Date 11:20 2020/8/2
**/

/*
  + 1.闭包是一个方法（对象）
  + 2.闭包定义在其他方法内部
  + 3.闭包是定义在方法内部的方法
  + 4.闭包能访问外部方法内的局部变量，并持有其状态
 */

void main() {
  var function = functionOne();
  function();
  function();
  function();
}

Function functionOne() {
  int count = 0;
  functionTwo() {
    //访问外部方法的局部变量并持有其状态
    print(count++);
  }

  return functionTwo;
}

//返回匿名方法
Function functionThree() {
  int count = 0;
  return () {
    count++;
  };
}
