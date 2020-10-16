///Mixins实例


abstract class Engine {
  void work();
}

class OilEngine implements Engine {
  @override
  void work() {
    print('work with oil');
  }

}

class ElectricEngine implements Engine {
  @override
  void work() {
    print('work with electric');
  }

}

class Type {
  String name;

  void run() {}
}

class Car = Type with ElectricEngine;

class Bus extends Type with OilEngine {
}

void main() {
  var bus = new Bus();
}