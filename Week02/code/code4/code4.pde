size(2226,1162);
PImage pic=loadImage("shejixueyuan.png");
pic.resize(width,height);
background(255);
noStroke();
float threshold=110;   //亮度值高于110的地方，不显示任何图案

for(int x=0;x<width;x+=2){
  for(int y=0;y<height;y+=10){     //取点
    color c=pic.get(x,y);          
    if(brightness(c)<threshold){
      
      fill(50);      
      float diameter=map(brightness(c),threshold,0,2,12); //映射     
      ellipse(x,y,diameter,diameter);
    }
  }
}
save("mywork9.png");
