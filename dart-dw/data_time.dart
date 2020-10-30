import 'dart:ffi';

///DateTime

/*
  + 1.DateTime.now()
  + 2.DateTime([int month = 1,int day = 1,int hour = 0,int minute = 0,int second = 0,int millisecond = 0,int microsecond = 0]);
  + 3.DateTime.utc(int year,[int month = 1, int day = 1,int hour = 0,int minute = 0,int second = 0,int millisecond = 0,int microsecond = 0]);
  + 4.解析时间 ISO 8601 DateTime.parse('')
  + 5.时间增减量add(new Duration(minutes: 5))    add(new Duration(minutes: -5))
  + 6.时间比较 isAfter中(param)是否在param之后
  + 7.时间比较 isBefore(param)是否在param之前
  + 8.时间差 difference  print([difference.inDays, difference.inHours]);//d1与d2相差的天数与小时
  + 9.时间戳  print(now.millisecondsSinceEpoch);//单位毫秒，13位时间戳 print(now.microsecondsSinceEpoch);//单位微秒,16位时间戳
  + 10.padLeft(int width,String padding)：如果字符串长度小于width，在左边填充padding
  + 11.防止某一段代码重复执行
 */
void main() {
  //申明
  var now = new DateTime.now();
  print(now);
  // [int month = 1,
  //      int day = 1,
  //      int hour = 0,
  //      int minute = 0,
  //      int second = 0,
  //      int millisecond = 0,
  //      int microsecond = 0]
  var d = new DateTime(2020, 8, 23, 13, 49, 20);
  print(d);

  //创建时间UTC世界协调时间
  var utc = new DateTime.utc(2019, 10, 10, 9, 30);
  print(utc);

  //解析时间ISO 8601
  var d1 = DateTime.parse('2018-10-10 09:30:30Z');
  print(d1);
  var d2 = DateTime.parse('2018-10-10 09:30:30+0800');
  print(d2);

  //时间增减量
  var d3 = DateTime.now();
  print(d3);
  print(d3.add(new Duration(minutes: 20)));
  print(d3.add(new Duration(minutes: -100)));

  //时间比较

  var d4 = new DateTime(2018, 10, 1);
  var d5 = new DateTime(2018, 10, 10);
  print(d1.isAfter(d2)); //是否在d2之后
  print(d1.isBefore(d2)); //是否在d2之前
  var d7 = DateTime.now();
  var d6 = d3.add(new Duration(milliseconds: 30));
  print(d3.isAtSameMomentAs(d4)); //是否相同

  //时间差
  var d9 = new DateTime(2018, 10, 1);
  var d10 = new DateTime(2018, 10, 10);
  var difference = d9.difference(d10);
  print([difference.inDays, difference.inHours]); //d1与d2相差的天数与小时

  //时间戳
  print(now.millisecondsSinceEpoch); //单位毫秒，13位时间戳
  print(now.microsecondsSinceEpoch); //单位微秒,16位时间戳

  //时间格式化
  //padLeft(int width,String padding)：如果字符串长度小于width，在左边填充padding
  var date = new DateTime.now();
  String timestamp =
      "${date.year.toString()}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}";
  print(timestamp);

  var lastPopTime = null;

  // 防重复提交
  if (lastPopTime == null ||
      DateTime.now().difference(lastPopTime) > Duration(seconds: 2)) {
    lastPopTime = DateTime.now();
    print('模拟为了防止重复执行的代码');
  } else {
    lastPopTime = DateTime.now();
    print('请勿重复点击');
  }
}
