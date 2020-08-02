/*
* @Author DingWen
* @Description 工厂构造方法
* @Date 12:49 2020/8/2
**/

/*
  + 1.工厂构造方法类似于设计模式中的工厂模式
  + 2.在构造方法前添加关键字factory实现一个工厂构造方法
  + 3.在工厂构造方法中可以返回对象
  + 4.map初始化 `static final Map<String,Logger> _cache = <String,Logger>{};`
  + 5.final属性的赋值需要在构造方法执行之前进行
 */

class Logger{
  final String name;
  //map初始化
  static final Map<String,Logger> _cache = <String,Logger>{};
  factory Logger(String name){
    if(_cache.containsKey(name)){
      return _cache[name];
    }else{
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);
}

void log(String msg){
  print(msg);
}