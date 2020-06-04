main(){
/**
 * 
 * 循环遍历List，Set，Map
 * 
 * for-in
 * forEach()：类似于es6中的forEach
 * map：类似于es6中的map
 * where:类似于es6中的filter
 * any：类似于es6中的some
 * every：类似于es6中的every
 * 
*/  

var myList=['q','a','d'];
for(var item in myList){
  // print(item);
}

myList.forEach((value){
  print('$value');
});



}  