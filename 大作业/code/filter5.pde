void filter5(){

int yline=(int)speed2;  //分界线，线上面的点不动，线下面的点坍塌,原280



//background(255);






strokeWeight(2);
//translate(530, 0);  //坐标系向右偏移530

for (int y=height-1; y>=0; y--) {  //反向循环，从下往上画，y是纵坐标

  if (y<yline) {    //分界线之上时，把图片里的像素点挨个誊抄过来
    for (int x=0; x<width; x++) {
      if (alpha(get(x, y))>0) {
        stroke(get(x, y));
        point(x, y+0);
      }
    }
  } else {      //分界线之下时
    float factor=map(y, yline, height, 0, c6);    //factor 是塌陷偏移的程度，越靠下，程度越甚  原150
    
    for (int x=0; x<width; x++) {
      if (alpha(get(x, y))>0) {
        
        float offset=abs(randomGaussian())*factor;  //实际偏移量由factor 和高斯分布共同决定
        stroke(get(x, y), 200);  //原图里未偏移位置的颜色
        
        //横坐标向左右随机少量偏移，纵坐标向下偏移
        point(x+random(-factor*0.1, factor*0.1), y+offset);  //把这个颜色点画在偏移后的位置上
      }
    }
  }
  
}

}