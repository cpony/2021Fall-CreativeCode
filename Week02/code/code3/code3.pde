size(600, 400);
background(255); 
for(float j=0;j<10;j++){
  for(float i=0;i<30;i++){
  stroke(120);
  strokeWeight(2);
  fill(0);
  rect(-400+10+i*40+j*3,j*20-10,20,20);
  fill(255);
  rect(-400+10+i*40+20+j*3,j*20-10,20,20);
  }
}
for(float j=10;j<20;j++){
  for(float i=0;i<30;i++){
  stroke(120);
  strokeWeight(2);
  fill(0);
  rect(-400+10+i*40+30-(j-10)*3,j*20-10,20,20);
  fill(255);
  rect(-400+10+i*40+20+30-(j-10)*3,j*20-10,20,20);
  }
}
save("mywork8.png");
