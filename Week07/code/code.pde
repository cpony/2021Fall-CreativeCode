float theta;

float a;

float col;

float num;

boolean st = true;

boolean back = true;

int index;



void setup() {

 size(1024,768);

 colorMode(HSB, 255);

 smooth();

 noStroke();

 background(#EEEEFF);

 color c1 = color(#CCCCFF);

 color c2 = color(#EEEEFF);

 gradientBackground(c1, c2);



}



void draw() {

 

 //background(#F2F2F2,50);

 translate(width/2, height/2);

 scale(1.3);

 theta = map(sin(millis()/1000.0), -1, 1, 0, PI/6);  //返回毫秒



 float num = 8;

 for (int i = 0; i < num; i++) {

  //a = 350;

  rotate(TWO_PI / num);

  branch(mouseX/2);

 }

 index++;

 saveFrame("E:/a/" +"0"+ index + ".png");

}





void branch(float len) {

 col = map(len, 0, 90, 0, 255);

 fill(col, 255, 255);

   

  //stroke (col, 255, 180);

 



 line(0, 0, 0, -len*.8);

 //ellipse(0, -len*.8, 3, 3);



  ellipseMode(CENTER);

   fill(#F2AFC1);

   ellipse(0, -len*.8, random(2, 10), random(2, 10));

   fill(#ED7A9E);

   ellipse(0, -len*.8, random(2, 10), random(2, 10));

   fill(#E54C7C);

   ellipse(0, -len*.8, random(2, 10), random(2, 10));

   float rnd = random(10);

   if(rnd < 0.1) {
    fill(#E54C7C);
    ellipse(0+random(-100, 100), height-random(20), random(4, 10), random(4, 10));
   }
   else if(rnd > 9.9) {
   fill(#F2AFC1);
   ellipse(0+random(-100, 100), height-random(20), random(4, 10), random(4, 10));
   }




 len *= 0.7; 





 //枝干

 if (len>30) {

  pushMatrix(); 

  translate(0, -30);

  rotate(theta);

  branch(len); 

  popMatrix();

  

  pushMatrix();

  translate(0, -30);

  rotate(-theta);

  branch(len); 

  popMatrix();



 }

}



void gradientBackground(color c1, color c2) {

 for (int i=0; i<=width; i++){

  for (int j = 0; j<=height; j++){

   color c = color(

   (red(c1)+(j)*((red(c2)-red(c1))/height)),

   (green(c1)+(j)*((green(c2)-green(c1))/height)),

   (blue(c1)+(j)*((blue(c2)-blue(c1))/height)) 

    );

   set(i, j, c);

  }

 }

} 



void keyPressed() {

 if (key==' ') {

  st=!st;

 }

 if (st) {

 stroke (col, 255, 490);

 } else {

 noStroke();
}

 if (key=='a') {

  back=!back;

 }

 if (back) {

 background(#F2F2F2,50);

 } 

 }

 
