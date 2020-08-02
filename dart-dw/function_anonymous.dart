/*
* @Author DingWen
* @Description 匿名方法
* @Date 11:04 2020/8/2
**/
/*
  + 1.可赋值给变量，通过变量进行调用
  + 2.可在其他方法中调用或传递给其他方法
 */
void main() {
  var function = (str) {
    print('匿名方法=$str');
  };
  function('anonymous');

  //不推荐使用，可读性不好
  (() {
    print('Test');
  })();

  List list = ['d', 'w'];
  var result = listTimes(list, (str) {
    return str * 10;
  });

  print(result);

  print(listTimesTwo(list));
}

List listTimes(List list, String times(str)) {
  for (var index = 0; index < list.length; index++) {
    list[index] = times(list[index]);
  }
  return list;
}

List listTimesTwo(List list) {
  var times = (str) {
    return str * 3;
  };
  for (var index = 0; index < list.length; index++) {
    list[index] = times(list[index]);
  }
  return list;
}
