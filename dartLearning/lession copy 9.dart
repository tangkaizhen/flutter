printAdd(num){
  var sum=0;
  for(var i=1;i<=num;i++){
    sum+=i;
  }
  return sum;
}


main(){

/**
 * 
 * 函数：
 * 
 * 返回类型 方法名称(参数){
 * 
 * }
 * 
 * 1,系统内置的函数：比如print
 * 2,一个方法中是可以嵌套其他方法的，而且可以嵌套很多层，这时候需要注意方法的作用域，这就是闭包
 * 3,给方法命名建议使用驼峰，首字母是小写，给类命名也是驼峰，但是首字母需要大写
 * 4,注意dart中的方法是没有关键字function
 * 5,dart中的可选参数，需要将参数放在:[ ]
 * printInfo(username,[age,sex]){
 * 
 * }
 * 6,方面的返回类型和参数类型可以不写，尽量和js同步
 * 7,默认参数
 * printInfo(username='tkz',[age,sex]){
 * 
 * }
 * 8,命令参数
 * printInfo(username,{age}){
 *  
 * }
 * printInfo('tkz',age:20)
 * 
 * 
 */

print(printAdd(3));
































}  