/*
* @Author DingWen
* @Description for for in
* @Date 18:19 2020/8/1
**/
/*
  + 传统for
  + for in 
 */
void main(){
  List list = [1,66,52,456,564,6,966,5666,49464,649,6];
  //传统for循环
  for(var index=0;index<list.length;index++){
    print(list[index]);
  }
  //for in循环
  for(var item in list){
    print(item);
  }
}