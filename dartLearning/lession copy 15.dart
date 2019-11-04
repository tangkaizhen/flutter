class Person{
  String name;
  int age;

  Person(this.name,this.age);
  printInfo(){
    print('${this.name}---${this.age}');
  }
}
main(){
  /**
   * 
   * Dart中对象操作符
   * ？条件运算符
   * as类型转换(多数用在继承和多态)
   * is类型判断
   * ..级联操作
   * 
   */

  Person p1;
  // 下面表示如果p1是空，表示不执行后面的，如果有值，执行后面的
  p1?.printInfo();
  Person p2=new Person('张三',20);
  p2?.printInfo();

  p2..name='李四'
    ..age=20
    ..printInfo();
}  