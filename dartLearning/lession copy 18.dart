class A{
  printA(){
    print('A');
  }
}
class B{
  printB(){
    print('B');
  }
}
class C with A,B{

}
main(){
  /**
   * 
   * 一个类可以实现多个接口,但是只能单继承
   * 如果模仿多继承，可以使用mixins
   * 作为mixins的类只能继承Object，不能继承其他的类
   * 作为mixins的类不能有构造函数
   * 
   */

  C c1=new C();
  c1.printB();

}  