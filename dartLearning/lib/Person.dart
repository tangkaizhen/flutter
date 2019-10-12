class Person{
  // 默认构造函数只能写一个
  Person(name,age){
    this.age=age;
    this.name=name;
  }
  // 命名构造函数可以写多个
  Person.now(){
    print('我是命名构造函数');
  }

  String name;
  int age;

  getInfo(){
    return '$name---$age';
  }
}