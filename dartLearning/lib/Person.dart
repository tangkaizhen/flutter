class Person{
  // 默认构造函数只能写一个
  Person(this.name,this.age);

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
