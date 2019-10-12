class Rect{
  double height;
  double width;
  Rect(this.height,this.width);

  // getter和setter
  get area{
    return this.height*this.width;
  }

  set areaHeight(value){
    this.height=value;
  }
}
main(){
  
  Rect r=new Rect(10, 5);
  // 注意下面area是没有()
  print('面积是：${r.area}');
  // 注意下面的取值方式
  r.areaHeight=6.0;
  print('面积是：${r.area}');
}  