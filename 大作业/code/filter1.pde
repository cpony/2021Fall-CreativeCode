void filter1(){

noStroke();

float threshold=c0;  //亮度值高于110的地方，将不显示任何图案

for(int x=0;x<width;x+=2){
  for(int y=0;y<height;y+=10){
    color c=get(x,y);
    if(brightness(c)<threshold){
      
      fill(50);      
      float diameter=map(brightness(c),threshold,0,2,12); //亮度为110的时候，直径为2；亮度为0时直径12。线性映射     
      ellipse(x,y,diameter,diameter);
    }
  }
}
}