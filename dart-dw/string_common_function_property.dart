/*
* @Author DingWen
* @DescriptionString常用方法属性
* @Date 16:23 2020/8/22
**/

void main() {
  String a = "abcdefg";
  String b = '12345';


  String e = '''asd
     fdsd
       fff
    
    ''';

  String f = """ 1
    2
    3
    4
    """;

  //常用属性
  String a20 = "aaaa";
  String a21 = "";
  print(a20.length); //4  字符串长度
  print(a20.isEmpty); //false    是否为空
  print(a20.isNotEmpty); //true   是否不为空
  print(a21.isEmpty); //true
  print(a21.isNotEmpty); //false

  //字符串连接
  String c = a + b; //使用+号连接
  String d = 'aaa' 'bbb'; //使用相邻空格符号连接，必须是两个字符串  不能是变量
  print(c); //abcdefg12345
  print(d); //aaabbb}

  //字符串模板
  String a1 = "aa";
  String b1 = "bb${a1}bb";
  print(b1); //bbaabb
  String b2 = "bb${a1.toUpperCase()}bb";
  print(b2); //bbAAbb

  //字符串和数字之间的转换
  int int1 = int.parse("33");
  print(int1); //33
  double d1 = double.parse("3.33");
  print(d1); //3.33
  print(33.toString());
  print(3.34.toString());
  print(3.12345.toStringAsFixed(3)); //保留精度  3.123

  //字符串切割
  String a2 = "aaabbb";
  print(a2.substring(0, 2)); //aa   含头不含尾
  print(a2.substring(3)); //bbb  从指定index至末尾
  String a5 = "a,d,d  d,c,,";
  List<String> a6 = a5.split(","); //使用，分割，返回的是一个数组
  print(a6.length); //6
  print(a6); //[a, d, d  d, c, , ]

  String a8 = "a b,c";
  String a7 = a8.splitMapJoin(",", //查询“，”,用onMatch的返回值替换“，”用onNonMatch的返回值替换其他
      onMatch: (Match match) {
        return "a";
      }, onNonMatch: (String nonMatch) {
        return "b";
      });
  print(a7); //bab    a b,c  =>   bab


  //字符串判断
  String a3 = "aaabbbccc";
  print(a3.startsWith("aa")); //true
  print(a3.startsWith("aa", 3)); //false  从index=3开始判断
  print(a3.endsWith("c")); //true
  print(a3.contains("ab")); //true
  print(a3.contains("ac")); //false
  print(a3.contains("ab", 3)); //false  从index=3开始判断


  //字符串替换
  String a4 = "abcdeab";
  print(a4.replaceAll("ab", "cc")); //cccdecc  替换全部符合条件的
  print(a4.replaceFirst("ab", "dd")); //ddcdeab  只替换第一个符合条件的
  print(a4.replaceFirst("ab", "dd", 3)); //abcdedd  从index=3开始  替换第一个符合条件的
  print(a4.replaceRange(1, 3, "z")); // 范围替换 从0-3  含0不含3
  print(a4.replaceAllMapped("c", (Match match) { //abyydeab  用方法返回值替换指定的字符串
    return "yy";
  }));
  print(a4.replaceFirstMapped(
      "b", (Match match) { //abcdea333  从index=2开始 用方法返回值替换指定的字符串
    return "333";
  }, 2));


  //字符串查找
  String a9 = "aababcc1bc23";
  print(a9.indexOf("ab")); //1  第一个符合条件的index
  print(a9.indexOf("ab", 2)); //3   从index=2开始往后找
  print(a9.indexOf("ab", 4)); //-1   从index=4开始往后找，找不到返回-1
  print(a9.lastIndexOf("bc")); //8  从后往前找   返回第一个符合条件的index
  print(a9.lastIndexOf(
      "bc", 3)); //-1  从后往前找  从index=3开始找  返回第一个符合条件的index  找不到返回-1
  print(a9.lastIndexOf("bc", 7)); //4  从后往前找  从index=7开始找  返回第一个符合条件的index

  //大小写转换
  String a10 = "aaBBCc";
  print(a10.toLowerCase()); //aabbcc
  print(a10.toUpperCase()); //AABBCC

  //去除空格
  String a11 = "  aab  bcc  ";
  print(a11); //   aab  bcc
  print(a11.trim()); //aab  bcc    去除左右两边空格
  print(a11.trimRight()); //   aab  bcc   去除右边空格
  print(a11.trimLeft()); // aab  bcc   //去除左边空格

  //补齐长度 剩余位使用指定字符串替换
  String a13 = "111";
  print(a13.padLeft(6)); //   111     剩余3个位  默认使用""补齐
  print(a13.padRight(6, "c")); //111ccc    剩余3个位   指定使用"c"
  print(a13.padRight(6, "dd")); //111dddddd  剩余3个位   每个位指定使用"dd"   替换后总长度不是6
  print(a13.padLeft(2, "e")); //111    如果指定长度小于原字符串长度   返回原字符串


  //字符串先后比较
  String a12 = "bbcc";
  print(a12.compareTo("aaa")); //1   在ascii码中 b>a
  print(a12.compareTo("bbcc")); //0
  print(a12.compareTo("dd")); //-1    在ascii码中 b<d
}