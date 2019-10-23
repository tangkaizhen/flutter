class Person{
  String name;
  num age;
  Person(this.name,this.age);

  printInfo(){
    print('${this.name}---${this.age}');
  }
}

class Web extends Person{
  Web(String name, num age) : super(name, age);

  // override可写，可不写，建议写上
  @override
  printInfo(){
    print('子类中的${this.name}---${this.age}');
  }

}
main(){
  /**
   * 封装，继承，多态
   * 注意继承只能单继承
   * 构造函数是无法继承,所有在子类继承父类的时候，需要super来实现父类的构造方法
   */
  Web w=new Web('唐凯震',20);
  w.printInfo();



}  