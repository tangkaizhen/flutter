main(){

  /**
   * Set:去重，其常用的方法和List类似
   * 将Set类型转变成List：toList（）
   */

  // 去重
  var list=['苹果','香蕉','桃子','苹果','香蕉','桃子','苹果','香蕉','桃子'];
  var set=new Set();
  set.addAll(list);
  print(set);

  var list1=set.toList();
  print(list1);

  

























}  