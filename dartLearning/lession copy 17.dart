
abstract class Animal{
  // 抽象方法,子类必须要实话抽象方法
  eat(); 
}

class Dog extends Animal{
  @override
  eat() {
    print('我是小狗');
  }
}

main(){

  /**
   * 抽象类（abstract主要用来指定标准)，多态，接口
   * 在dart中，定义接口和定义抽象类一样，都使用abstract，dart中接口没有使用interface定义
   * 抽象类不能被实例化，只有继承他的子类实例化 
   * 接口里面必须全部是抽象方法，没有普通的方法
   */

  Dog d=new Dog();
  d.eat();

}  