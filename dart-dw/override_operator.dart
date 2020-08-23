

///操作符复写

void main(){
  var person1 = new Person(24);
  var person2 = new Person(23);
  print(person1 > person2);
  print(person1['age']);
}

class Person{
  int age;
  Person(this.age);

  bool operator > (Person person) => this.age > person.age;

  int operator [] (String str){
    if('age'.indexOf(str) > -1){
      return age;
    }
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && age == other.age;

  @override
  int get hashCode => age.hashCode;
}