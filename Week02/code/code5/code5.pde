PImage pic;
size(2226, 1162);
pic=loadImage("shejixueyuan.png");
pic.resize(width, height);
for (int i=0; i<300000; i++) {  //屏幕上一共戳了300000个小圆
  
  float x=randomGaussian()*200+width/2;  //使用高斯分布，以屏幕中心为中心，横坐标偏移一个随机值，该值呈高斯分布
  float y=randomGaussian()*100+height/2;
  
  color c=(pic.get(int(x), int(y)));  //从图片上的相同位置取色，由于是单位所以强转
  fill(c);
  noStroke();
  float diameter=random(6);  //每个小圆的直径随机
  ellipse(x, y, diameter, diameter);
  save("mywork10.png");
}
