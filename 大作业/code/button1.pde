/**
 * ControlP5 Controlframe
 *
 * this example shows you how to create separate window to 
 * display and use controllers with  processing 3
 *
 * by Andreas Schlegel, 2016
 * www.sojamo.de/libraries/controlp5
 *
 */
float threshold;

//ControlP5 cp5;

color col;


ControlFrame cf;

float speed1,speed2,speed3,speed4;

float cl;
float pos;
float c0, c1, c2, c3,c4,c5,c6,c7,c8;
boolean auto1;
boolean auto2_1;
boolean auto2_2;
boolean auto2_3;
boolean auto2_4;
boolean auto2_5;
boolean auto2_6;
boolean auto2_7;
boolean auto3;
boolean auto4;
boolean auto5;
boolean auto6;
boolean auto7;
// void settings() {
//   size(400, 400, P3D);
// }

void UIsetup() {
  cf = new ControlFrame(this, 400, 800, "Controls");
  surface.setLocation(420, 10);
  myFont=createFont("PTMono.ttc", 72);
 
  


  
  noStroke();
}

void UIdraw() {
 //  if (auto) pos += speed;
//   background(0);
//   //translate(width/2, height/2);
//   rotateY(pos);
//   lights();
//   fill(c0, c1, c2, c3);
//   box(100);
       
//float threshold=c0;


}




class ControlFrame extends PApplet {

  int w, h;
  PApplet parent;
  ControlP5 cp5;

  public ControlFrame(PApplet _parent, int _w, int _h, String _name) {
    super();   
    parent = _parent;
    w=_w;
    h=_h;
    PApplet.runSketch(new String[]{this.getClass().getName()}, this);
  }

  public void settings() {
    size(w, h);
  }

  public void setup() {
    surface.setLocation(10, 10);
    cp5 = new ControlP5(this);
    
    cp5.addToggle("on/off_1")
       .plugTo(parent, "auto1")
       .setPosition(10, 10)
       .setSize(20, 20)
       .setValue(false);

    cp5.addToggle("on/off_2")
       .plugTo(parent, "auto2_1")
       .setPosition(10, 70)
       .setSize(20, 20)
       .setValue(false);  

    cp5.addToggle("GRAY")
       .plugTo(parent, "auto2_2")
       .setPosition(340, 50)
       .setSize(20, 20)
       .setValue(false);    
    
    cp5.addToggle("INVERT")
       .plugTo(parent, "auto2_3")
       .setPosition(340, 90)
       .setSize(20, 20)
       .setValue(false);       
           cp5.addToggle("ERODE")
       .plugTo(parent, "auto2_4")
       .setPosition(340, 130)
       .setSize(20, 20)
       .setValue(false);   
           cp5.addToggle("DILATE")
       .plugTo(parent, "auto2_5")
       .setPosition(340, 170)
       .setSize(20, 20)
       .setValue(false);   
           cp5.addToggle("on/off_3")
       .plugTo(parent, "auto2_6")
       .setPosition(10, 130)
       .setSize(20, 20)
       .setValue(false);   
           
           cp5.addToggle("on/off_4")
       .plugTo(parent, "auto2_7")
       .setPosition(10, 190)
       .setSize(20, 20)
       .setValue(false);   
           
       cp5.addToggle("on/off_5")
       .plugTo(parent, "auto3")
       .setPosition(10, 250)
       .setSize(20, 20)
       .setValue(false);   
   
       cp5.addToggle("on/off_6")
       .plugTo(parent, "auto4")
       .setPosition(10, 310)
       .setSize(20, 20)
       .setValue(false); 

       cp5.addToggle("on/off_7")
       .plugTo(parent, "auto5")
       .setPosition(10, 360)
       .setSize(20, 20)
       .setValue(false); 

       cp5.addToggle("on/off_8")
       .plugTo(parent, "auto6")
       .setPosition(10, 420)
       .setSize(20, 20)
       .setValue(false); 

       cp5.addToggle("on/off_9")
       .plugTo(parent, "auto7")
       .setPosition(10, 480)
       .setSize(20, 20)
       .setValue(false); 

       

    cp5.addNumberbox("black lines")
       .plugTo(parent, "c0")
       .setRange(0, 300)
       .setValue(0)
       .setPosition(100, 10)
       .setSize(100, 20);
       
    cp5.addNumberbox("GRAY THRESHOLD")
       .plugTo(parent, "c1")
       .setRange(0, 100)
       .setValue(0)
       .setPosition(100, 70)
       .setSize(100, 20);
       
    cp5.addNumberbox("POSTERIZE")
       .plugTo(parent, "c2")
       .setRange(20, 250)
       .setValue(0)
       .setPosition(100, 130)
       .setSize(100, 20);
       
       cp5.addNumberbox("BLUR")
       .plugTo(parent, "c4")
       .setRange(0, 300)
       .setValue(0)
       .setPosition(100, 190)
       .setSize(100, 20);

       cp5.addNumberbox("angle lines")
       .plugTo(parent, "c5")
       .setRange(0, 300)
       .setValue(0)
       .setPosition(100, 250)
       .setSize(100, 20);

    cp5.addSlider("thread")
       .plugTo(parent, "speed1")
       .setRange(0, 3000)
       .setValue(0.0)
       .setPosition(100, 310)
       .setSize(200, 20);

           cp5.addSlider("height")
       .plugTo(parent, "speed2")
       .setRange(0, height)
       .setValue(0.0)
       .setPosition(100, 360)
       .setSize(200, 20);

       cp5.addSlider("pixel size")
       .plugTo(parent, "speed3")
       .setRange(1, 200)
       .setValue(12)
       .setPosition(100, 420)
       .setSize(200, 20);

         cp5.addSlider("textSize")
       .plugTo(parent, "speed4")
       .setRange(1, 30)
       .setValue(10)
       .setPosition(100, 480)
       .setSize(200, 20);

       cp5.addKnob("THRESHOLD")
       .plugTo(parent, "c3")
       .setPosition(340, 290)
       .setSize(50, 50)
       .setRange(0, 150)
       .setValue(200);

       cp5.addKnob("strong")
       .plugTo(parent, "c6")
       .setPosition(340, 350)
       .setSize(50, 50)
       .setRange(0, 500)
       .setValue(150);
       
       
       cp5.addKnob("color height")
       .plugTo(parent, "c7")
       .setPosition(340, 410)
       .setSize(50, 50)
       .setRange(0,height)
       .setValue(150);

       cp5.addKnob("distance")
       .plugTo(parent, "c8")
       .setPosition(340, 470)
       .setSize(50, 50)
       .setRange(0,30)
       .setValue(10);
       

    cp5.addColorWheel("col" , 0 , 600 , 200 ).setRGB(color(128,0,255))
       .plugTo(parent, "col");
       //text(cp5.get(ColorWheel.class,"col").getRGB(),340, 550);
        

        
  textFont(myFont);
  textSize(12);
  textAlign(CENTER, TOP);
  fill(0, 0, 0);
  
  //上面四条设定了文字的样式，要在text()渲染文字前设定好。
  
  text("将图片放入data文件夹，点击图片窗口会随机切换图片", 160, 540);
  
  text("在选中图片窗口的情况下按‘s’保存图片",120,560);

  text("（多图片只能随机切换，不用修改图片名）",120,580);




  }
  //int col = color(100);



// ControlP5 cp5;

//   void Colorsetup() {
//   cp5 = new ControlP5( this );
//   cp5.addColorWheel("c" , 250 , 10 , 200 ).setRGB(color(128,0,255));
//   noStroke();
//   }
  
//int c = color(100);

// void draw() {  
//   background(50);
//   fill( c );
//   rect(0,240,width,200);
//  println(cp5.get(ColorWheel.class,"c").getRGB()); 
// }






  void draw() {
  //  background(190);

//   cp5 = new ControlP5( this );
//        text(cp5.get(ColorWheel.class,"col").getRGB(),340, 550);
  }
}
