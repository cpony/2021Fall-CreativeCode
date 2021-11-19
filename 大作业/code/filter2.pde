void filter2_1(){


float factor1=c1*0.01;  //控制阈值
  

  filter(THRESHOLD,factor1);  //对窗口内容添加滤镜
  
  fill(0,0,255);
  //textSize(32);
  //text(factor,mouseX,mouseY);
}


//filter函数自带的所有滤镜
void filter2_2(){
  filter(GRAY);
}

void filter2_3(){
  filter(INVERT);
}

void filter2_4(){
  filter(ERODE);
}

void filter2_5(){
  filter(DILATE);
}

void filter2_6(){
  filter(POSTERIZE, c2*0.1);
}

void filter2_7(){
  filter(BLUR, c4*0.1);
}