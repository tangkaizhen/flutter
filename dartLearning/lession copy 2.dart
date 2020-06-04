/**
 * dart里面是有类型校验
 * 变量名称是区分大小的
 * 
 * dart数据类型
 * 1，字符串 String
 * 2，整形 int  浮点型：double  double可以被赋值整形或者浮点型，但是int必须是整型
 * 3，布尔 bool
 * 4，List （数组）
 * 5, Map (字典)，类似于js中的对象
 * 
 * 可以通过is判断类型
 * 用var来定义变量，可以自动推断变量类型
 * 
 * 注意dart中不会自动进行类型转换，好比'1'不会自动转变成1，这和js中有点区别
 * 
 */

// 表示没有返回值
void main(){
  // 如果一段字符串需要换行，则可以使用三个引号，这是可以支持格式的保留
  String str='''你好呀，
    这是换行，
    换行了
  ''';
  
  var a=[1,2,3,4];
  
  // var arr=new List();
  // arr.add('张三');
  // arr.add('张四');
  // arr.add('张五');
  // arr.add('张六');

  // 定义一个有类型的List
  var a1=new List<String>();

  print(a is List);
  print(a);
}