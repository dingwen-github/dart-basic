/*
* @Author DingWen
* @Description 计算属性
* @Date 11:54 2020/8/2
**/

/*
  + 1.顾名思义，计算属性的值是通过计算而来，本身不存储值
  + 2.计算属性赋值，其实就是通过计算转换到其他实例变量
 */

void main() {
  var rect = new Rectangle();
  rect.width = 200;
  rect.height = 300;
  print(rect.area);
  rect.area = 200;
  print(rect.area);
}

class Rectangle {
  num width, height;

//  num area() {
//    return width * height;
//  }

//  num get area{
//    return width * height;
//  }

  num get area => width * height;
      set area(value){
        width = value / 20;
      }
}
