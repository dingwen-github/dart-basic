/*
* @Author DingWen
* @Description 方法
* @Date 19:36 2020/8/1
**/

/*
  + 1.在Dart中方法也是对象，并且有具体的类型Function
  + 2.返回值类型、参数类型都可以省略
  + 3.箭头语法 => expr  是{return expr;}的缩写。只适用于一个表达式
  + 4.方法都有返回值，如果没有指定默认返回一个null
  + 5. 箭头语法不能写rerun
  + 6.三目运算可以写箭头语法
  + 7.可选参数： {} 可选命名参数 []可选位置参数
  + 8.必须参数只能放在第一，可选参数放在后面
  + 9.使用 = 在可选参数指定默认值，默认值只能是编译期的常量
  + 10.可选参数默认值：没有传递参数的时候使用，传递参数时则使用传递的参数
  + 11.方法对象：方法可以作为对象赋值给其他变量，方法可以作为参数传递给其他方法
 */

void main(List args){
  print(args);
  String result = getPerson('dingwen', 23);
  print(result);

  printPerson('maorui', 12);
  print(printPerson('maorui',19));

  getStr(1);
  getString();

  print(getStudent1('1605410122'));
  print(getStudent1('1605410122','dingwen'));
  print(getStudent1('1605410122','dingwen',23,99.0));
  print(getStudent2('1605410122'));
  print(getStudent2('1605410122',name: 'dingwen'));
  print(getStudent2('1605410122',name: 'dingwen',age: 23,score: 99.0));
  print(getStudent3('1605410122',name: 'dingwen',age: 23,score: 99.0));
  print(getStudent3('1605410122',name: 'dingwen',age: 23));
}
String getPerson(String name,int age){
  return 'name: $name, age= $age';
}

//void 可以省略，参数类型也可以省略,返回值为null
 printPerson(String name,int age){
 print('name=$name,age=$age');
}

//箭头语法
getString() => print('object');
getStr(gender) => gender == 1 ? '男生' : '女生';
//getStr2() => return 'a';


//可选参数{} []
getStudent1(String id,[String name, int age, score]){
  return 'id = $id,name=$name,age=$age,score=$score';
}

getStudent2(String id,{String name,int age,score}){
  return 'id=$id,name=$name,age=$age,score=$score';
}

//可选参数默认值
getStudent3(String id,{String name,int age,double score = 100.0}){
  return 'id=$id,name=$name,age=$age,score=$score';
}