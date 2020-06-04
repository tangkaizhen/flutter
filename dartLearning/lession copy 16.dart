class Person{
  String name;
  num age;

  Person(this.name,this.age);
  
  printInfo(){
    print('${this.name}---${this.age}');
  }

  run(){
    print('我在跑步');
  }
}

class Web extends Person{
  // 如果父类构造函数有参数，需要在子类web中也写个构造函数，给父类Person传参
  Web(String name, num age) : super(name, age);

  printInfo(){
    // 子类调用父类的方法
    super.run();
    
    print('子类中的${this.name}---${this.age}');
  }

}

main(){

  /**
   * 封装，继承，多态
   * 注意继承只能单继承
   * 子类使用extends关键字来继承父类
   * 构造函数是无法继承,所有在子类继承父类的时候，需要super来实现父类的构造方法
   * 子类还可以定义自己的方法和复写父类的方法
   * 
   */
  Web w=new Web('唐凯震',20);
  w.printInfo();

}  