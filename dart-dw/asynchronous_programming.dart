import 'dart:math';

///Dart 异步编程

/*
  + 1.在Dart中与Promise对应的是Future
  + 2.Dart是单线程的，没有线程抢占，数据安全
  + 3.Future对象封装了Dart的异步操作，两种状态（uncompleted）(completed)
  + 4.在Dart中，所有涉及到IO的函数都封装成一个Future对象返回，在你调用一个异步函数的时候，在结果或者错误返回之前，你得到的是一个uncompleted状态的Future
  + 5.completed也有两种状态，一种代表成功返回结果，一种代表失败返回错误
  + 6.FutureOr<T> 是个特殊的类型，它没有类成员，不能实例化，也不可以继承，看来它很可能只是一个语法糖 受限制的dynamic类型，因为它只能接受Future<T>或者T类型的值 请避免声明函数返回类型为FutureOr<T>
  + 7.如果Future内的函数执行发生异常，可以通过Future.catchError来处理异常
  + 8.Future支持链式调用
  + 9.申明了async的函数，返回值必须是Future对象。即便你在async函数里面直接返回T类型的数据，编译器会自动帮你包装成Future<T>类型的对象。如果是void函数则返回Future<void>
  + 10.在遇到await的时候，又会把Future类型拆包，原来的数据类型暴露出来
  + 11.await所在的函数必须添加async关键字
 */

//main方法会优先执行，then来回调成功的结果
Future<String> fetchData() {
  return Future(() => 'Large latte');
}

Future<void> fetchUserOder() {
  return Future.delayed(Duration(seconds: 2),
      () => throw Exception('Logout failed: user id is not null'));
}

//链式调用
Future<String> fetchName() {
  return Future(() => 'd');
}

void main() {
  fetchData().then((result) => print(result));
  print('main....');

  fetchUserOder().catchError((error) => print(error));

  fetchName()
      .then((result) => result + 'i')
      .then((result) => result + 'n')
      .then((result) => result + 'g')
      .then((result) => print(result));

  /*
  场景模拟：
    1.调用登录接口
    2.根据登录接口返回的token获取用户信息
    3.把用户信息返回到本机
   */

  login('dingwen', '123')
      .then((token) => fetchUserInfo(token).then((user) => saveUserInfo(user)));

}

//换成 async 和await 则可以这样
void doLogin() async {
  try {
    var token = await login('dingwen', '123');
    var user = await fetchUserInfo(token);
    await saveUserInfo(user);
  } catch (err) {
    print(err);
  }
}

Future<String> login(String name, String password) {
  //登录
}

Future<User> fetchUserInfo(String token) {
  //获取用于信息
}

Future saveUserInfo(User user) {
  //缓存用户信息
}

class User {
  User(this.name, this.password);

  String name;
  String password;
}


//Future<String> getUserInfo() async {
//  return 'aaa';
//}
//等价于：
//Future<String> getUserInfo() async {
//  return Future.value('aaa');
//}