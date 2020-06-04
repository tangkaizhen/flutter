class Person{

  /**
   * 构造函数，名字和类名一样
   * 当程序一执行，就会执行构造方法
   */
  Person(name,age){
    this.age=age;
    this.name=name;
  }
  /**
   * 
   * 上面也可以简写成下面的形式
   * Person(this.name,this.age){
   * 
   * }
   * 
   */

  String name;
  int age;

  getInfo(){
    print(this.name);
  }
  
}

main(){

  /**
   * 
   * dart也是面向对象语言
   * 所有类都是都是继承Object
   * 类(三大特性：封装，继承，多态)，对象
   * 类需要放到main函数外面
   * 
   */

  Person p=new Person('唐凯震',25);
  p.getInfo();

}  