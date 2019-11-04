/**
 * dart里面是有类型校验
 * 变量名称是区分大小的
 * dart数据类型
 * 1，字符串 String
 * 2，整形 int  浮点型：double  double可以被赋值整形或者浮点型，但是int必须是整型
 * 3，布尔 bool
 * 4，Lsit （数组）
 * 5, Map (字典)，类似于js中的对象
 * 
 * 可以通过is判断类型
 * 用var来定义变量，可以自动推断变量类型
 */

// 表示没有返回值
void main(){
  var arr=new List();
  arr.add('张三');
  arr.add('张四');
  arr.add('张五');
  arr.add('张六');
  print(arr);
}