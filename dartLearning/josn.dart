main(){
/**
 * Maps:其类似于json，但是键名需要用引号引起来,这点和js不一样
 * 注意获取某个键值，只能通过['']，不能通过.
 * var person={
 *    "name":"唐凯震",
 * } 
 * 
 * 常用属性：
 * keys:所有的键
 * values:所有的键值
 * isEmpty:
 * isNotEmpty:
 * 
 * 常用方法：
 * addAll:一次增加多个键值对
 * remove(key)
 * containsValue()
 * 
*/ 

  var person={
    "age":10,
    "name":"唐凯震"
  };
  print(person.keys);
  
  // 这时候如果想访问name的值，不能通过像js中的.，需要通过[]
  print(person['name']);
  print(person);

}  