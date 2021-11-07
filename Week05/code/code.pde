int rectX, rectY;   

int circleX, circleY; 

int rectSize = 40;  

int circleSize = 40; 
color rectColor, circleColor, baseColor;

color rectHighlight, circleHighlight;

color currentColor;

boolean rectOver = false;

boolean circleOver = false;



int num=10000;

int attractorNum=6;

Particle[]ps;

PVector[]attractor;



float spdRange=2000;  

float damp=0.002;



void setup() {

 

 size(960, 720);  

 

 rectColor = color(#f07d70);

 rectHighlight = color(#cb0b3c);

 circleColor = color(#2dcbeb);

 circleHighlight = color(#2d95eb);

 baseColor = color(102);

 currentColor = baseColor;

 circleX = width/2+circleSize/2+10-350;

 circleY = height/2+300;

 rectX = width/2-rectSize-350;

 rectY = height/2-rectSize/2+300;

 ellipseMode(CENTER);



 attractor=new PVector[attractorNum];

 ps=new Particle[num];

 reset();

}



void draw() {

float spdRange=2000;  

float damp=0.002;

 update(mouseX, mouseY);

 // background(currentColor);

 

 if (rectOver) {

  fill(rectHighlight);

 } else {

  fill(rectColor);

 }

 stroke(255);

 rect(rectX, rectY, rectSize, rectSize);

 

 if (circleOver) {

  fill(circleHighlight);

 } else {

  fill(circleColor);

 }

 stroke(255);

 ellipse(circleX, circleY, circleSize, circleSize);



 stroke(0, 4);



 for (int i=0; i<num; i++) {

  ps[i].step();

  point(ps[i].pos.x, ps[i].pos.y);

 }



}



void keyPressed() {

 if (key==' ') {

  reset();

 }

}



void reset() {

 for (int i=0; i<attractor.length; i++) {

  attractor[i]=new PVector(random(width), random(height));

 }



 for (int i=0; i<num; i++) {

  ps[i]=new Particle();

 }



 background(255);

 fill(255, 0, 0);

 noStroke();

 for (int i=0; i<attractor.length; i++) {

  ellipse(attractor[i].x, attractor[i].y, 20, 20);

 }

}



class Particle {
  PVector pos;
  PVector vel;

  Particle() {
    pos=new PVector(random(width), random(height));
    vel=new PVector(random(-spdRange, spdRange), random(-spdRange, spdRange));
  }

  void step() {

    for (int i=0; i<attractor.length; i++) {
      float sqD=PVector.sub(pos, attractor[i]).magSq();

      if (sqD>0.1) {
        PVector acc=PVector.sub(attractor[i], pos).div(sqD).mult(spdRange*2);
        vel.add(acc);
      }
    }

    pos.add(vel);
    vel.mult(damp);
  }
}






void update(int x, int y) {

 if ( overCircle(circleX, circleY, circleSize) ) {

  circleOver = true;

  rectOver = false;

 } else if ( overRect(rectX, rectY, rectSize, rectSize) ) {

  rectOver = true;

  circleOver = false;

 } else {

  circleOver = rectOver = false;

 }

}

//float spdRange=2000;  

//float damp=0.002;

void mousePressed() {

 if (circleOver) {

  spdRange+=2000; 

 }

 if (rectOver) {

  num-= 1000;

 }

}



boolean overRect(int x, int y, int width, int height)  {

 if (mouseX >= x && mouseX <= x+width && 

   mouseY >= y && mouseY <= y+height) {

  return true;

 } else {

  return false;

 }

}



boolean overCircle(int x, int y, int diameter) {

 float disX = x - mouseX;

 float disY = y - mouseY;

 if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {

  return true;

 } else {

  return false;

 }

}
