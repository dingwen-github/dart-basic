///enum枚举

/*
  + 1.index从0开始
  + 2.不能指定原始值
  + 3.不能写方法
 */
const spring = 0;
const summer = 1;
const autumn = 2;
const winter = 3;

void main() {
//  var currentSeason = 1;
var currentSeason = Season.spring;
print(currentSeason.index);
  switch (currentSeason) {
    case Season.spring:
      print('1-3月');
      break;
    case Season.summer:
      print('4-6月');
      break;
    case Season.autumn:
      print('7-9月');
      break;
    case Season.winter:
      print('10-12月');
      break;
  }
}

enum Season{
  spring,
  summer,
  autumn,
  winter
}
