main(){

/**
 * 1,number和String类型之间的转换
 * 
 * number=>String  toString()
 * String=>number parse()
 * 
 * 2,其他类型转换成Boolean
 * isEmpty:判断字符串是否为空
 * 
 * isNAN
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
















}  