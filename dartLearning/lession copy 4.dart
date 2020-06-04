main(){

/**
 * dart中也是支持条件表达式 ?:
 * dart中条件判断和循环语句和js是一样的
 * ??  相当于js中的||，如果前面为空，则会采用备用的值
 * 
 * number和String类型之间的转换
 * number=>String  toString()
 * String=>number parse()  以后不管是转换成整形还是浮点型，均用double
 * 
 * isEmpty:判断字符串是否为空
 */

  String str='123';
  int myNum=int.parse(str);
  // var myNum=double.parse(str);
  print(myNum is int);

  /**
   * 如果对于一些可能出现bug的程序，可以使用try-catch来解决,抛出异常
   */

  String price='';

  try{
    var myNum=double.parse(price);
    print(myNum);
  }catch(err){
    print(0);
  }

  // 判断一个变量是否为空
  var num1;
  if(num1==null){
    print('空');
  }













}  