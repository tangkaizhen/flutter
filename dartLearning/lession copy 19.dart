// 泛型方法，注意需要加上三个地方T
T getData<T>(T data){
  return data;
}


main(){

  /**
   * 泛型，可以解决代码重用和不特定的类型校验的问题
   */
  
  print(getData<String>('我叫唐凯震'));
  
}  