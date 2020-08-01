/*
* @Author DingWen
* @Description
* @Date 15:33 2020/8/1
**/

/*
  1. 三个单引号或者双引号可输出多行文本
  2. \n 换行 \t tab
  3. 引号前面加 r 不转义
  4. 两个字符串相比较 == 比较的是内容
  5.差值表达式 ${} 只有一项的时候可以省略括号
  6.str * 10 字符串复制
  7.endsWith 是否以什么结束
  8.startWith 是否以什么结束
  9.split 以什么分隔，得到的是一个数组
 */

void main(){
  String str1 = 'dart';
  String str2 = "dart";
  String str3 = '''dart dart ''';
  String str4= '''dart
  
   dart ''';

  String str5 = """ dart
  dart
  dart
  """;
  // \n 换行
  String str6 = 'talk is cheap show me the code \n';
  //tab键
  String str7 = 'talk is cheap show me the code \t ';
  //不转移字符
  String str8 = r'talk is cheap show me the code \n';

  print(str7);
  print(str8);
  print(str1);
  print(str2);
  print(str3);
  print(str4);
  print(str8 + 'new');
  print(str5 * 10);
  print(str8[0]);
  print(str8.length);
  print(str8.isEmpty);
  print(str8.isNotEmpty);
  //比较的是内容
  print(str8 == str1);

  //插值表达式
  int a = 10;
  int b = 20;
  print('a = $a');
  print('${a + b}');

  print(str5.contains('other'));
  //是否以什么开始
  print(str8.startsWith('t'));
  //是否以什么结束
  print(str8.endsWith('other'));
  print(str8.substring(1,2));
  var list = str8.split(' ');
  print(list);
  print(str8.replaceAll('from', ''));


}