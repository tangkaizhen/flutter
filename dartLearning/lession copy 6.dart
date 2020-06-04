main(){

  /**
   * 
   * Set:去重，其常用的方法和List类似；
   * 将Set类型转变成List：toList（）；
   * Set是没有顺序的，所有不能通过索引去获取值
   * 
   */

  // 去重
  var list=['苹果','香蕉','桃子','苹果','香蕉','桃子','苹果','香蕉','桃子'];
  var set=new Set();
  set.addAll(list);

  // Set转变成List
  var list1=set.toList();
  print(list1);

  

























}  