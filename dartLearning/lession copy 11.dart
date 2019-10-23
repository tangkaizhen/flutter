class Person{
  // 构造函数，名字和类名一样
  Person(name,age){
    this.age=age;
    this.name=name;
  }

  String name;
  int age;

  getInfo(){
    return '$name--$age';
  }
}
main(){
  /**
   * 类(三大特性：封装，继承，多态)，对象
   * 类需要放到main函数外面
   */

  Person p=new Person('唐凯震',25);
  print(p.getInfo());

}  