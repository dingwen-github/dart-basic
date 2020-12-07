/*
* @Author DingWen
* @Description 正则表达式使用
* @Date 17:40 2020/12/7
**/
void main(){
  RegExp exp = new RegExp(r"^[0-9]\d*$");
  print(exp.hasMatch('12646546154165'));
}