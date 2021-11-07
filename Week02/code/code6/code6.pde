PImage pic;
int yline=250;  //分界线，线上面的点不动，线下面的点坍塌
size(1113, 581);
pic=loadImage("shejixueyuan.png");  //载入原始图片
pic.resize(width,height);
strokeWeight(2);

for (int y=pic.height-1; y>=0; y--) {  //反向循环，从下往上画

  if (y<yline) {    //分界线之上时，像素点不变
    for (int x=0; x<pic.width; x++) {
      if (alpha(pic.get(x, y))>0) {
        stroke(pic.get(x, y));
        point(x, y);
      }
    }
  } else {      //分界线之下时
    float factor=map(y, yline, pic.height, 0, 500);    //factor 是塌陷偏移的程度，越靠下，程度越大
    
    for (int x=0; x<pic.width; x++) {
      if (alpha(pic.get(x, y))>0) {
        float offset=abs((randomGaussian())*factor);  //实际偏移量由factor 和高斯分布共同决定,abs取绝对值
        stroke(pic.get(x, y), 200);  //原图里未偏移位置的颜色
        point(x+random(-factor*0.1, factor*0.1), y+offset);  // //横坐标向左右随机少量偏移，纵坐标向下偏移
      }
    }
  }
  
}
save("mywork11.png");
