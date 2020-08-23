///Dart编程小技巧

void main() {
  List list = [];
  //规避空指针异常
  print(list?.length ?? -1);
  list.add('');
  list.add(null);
  list.add(0);
  list.forEach((item) {
    if (item == null || item == '' || item == 0) {
      print('item is null');
    }

    //简化判断
    if ([null, '', 0].contains(item)) {
      print('item is null');
    }
  });
}
