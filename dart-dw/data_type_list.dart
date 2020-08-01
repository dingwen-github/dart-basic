/*
* @Author DingWen
* @Description List
* @Date 15:59 2020/8/1
**/
/*
  1.在dart中数组和List是一样的概念
  2.indexOf() 查找元素所在位置，找到返回元素所在下标，没有找到则返回-1
  3.sort() 排序参数支持排序规则的方法 默认按照ascii码表排序
  4.add() 添加一个元素
  5. insert(index,value) 插入指定位置的元素
  6.forEach() 参数为一个方法 List 遍历
  7.不可变List List list = const [] ;
 */
void main() {
  var list1 = [1, 10, 5, 'dart', true];
  print(list1);
  print(list1[2]);
  list1[1] = 'dingwen';
  print(list1);

  //不可变list
  var list2 = const [1,2,3];
//  list2[0] = 20;
  print(list2);

  var list3 = new  List();

  var list4 = ['hello','dart'];
  print(list4.length);
  list4.add('value');
  list4.insert(0, 'java');
  print(list4);
  list4.remove('value');
//  list4.clear();
  print(list4);

  //找到则返回元素所造位置，找不到则返回-1
  print(list4.indexOf('element'));
  //按照ascii码表，参数支持一个排序的方法
  list4.sort();
  print(list4);

  print(list4.sublist(2));

  //forEach参数是一个方法
  list4.forEach(print);
}
