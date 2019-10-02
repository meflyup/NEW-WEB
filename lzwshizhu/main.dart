import 'dart:html';
import 'dart:math';
ButtonElement genButton;

void main() {
  genButton = querySelector('#generateButton');
  genButton.onClick.listen(generateBadge);  
  
}

void setBadgeName(String newName){  //注册一个click事件
  querySelector('#badgeName').text = newName;
}

void generateBadge(Event e){  //为按钮实现点击监听（更新HTML界面）
  setBadgeName(generateNum());
}

String generateNum(){
  var ran = new Random();
  var num = (ran.nextInt(39)+1).toString();
  return num;
}


