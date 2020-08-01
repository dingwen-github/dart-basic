/*
* @Author DingWen
* @Description while do while
* @Date 18:23 2020/8/1
**/

/*
  + while 和其他语言一致
  + do while 和其他语言一致
 */

void main() {
  int index = 10;
  while (index < 100) {
    print(index);
    index++;
  }

  do {
    print(index--);
  } while (index > 0);
}
