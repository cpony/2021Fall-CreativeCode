/**
 * This code is copyright (c) Mathias Markl 2016
 *
 * This program is free software: you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation, either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see <http://www.gnu.org/licenses/>.
 */

import controlP5.*;


import at.mukprojects.imageloader.*;
import at.mukprojects.imageloader.file.*;
import at.mukprojects.imageloader.image.*;
 
String path = "yourPath";

ImageLoader loader;
ImageList list;
Image img;
PFont myFont;



void setup() {
  size(1000, 800);

  path = dataPath("");
  loader = new FileImageLoader(this);
  list = loader.start(path);

UIsetup();


//Colorsetup();



myFont=createFont("PTMono.ttc", 72);





}










void draw() {
  
  
  
  
  UIdraw();
  
  
  if (img == null) {
    img = list.getRandom();
  } else {
    image(img.getImg(), 0, 0, width, height);

  }





if (auto1) filter1();
if (auto2_1) filter2_1();
if (auto2_2) filter2_2();
if (auto2_3) filter2_3();
if (auto2_4) filter2_4();
if (auto2_5) filter2_5();
if (auto2_6) filter2_6();
if (auto2_7) filter2_7();
if (auto3) filter3();
if (auto4) filter4();
if (auto5) filter5();
if (auto6) filter6();
if (auto7) filter7();




}

void mousePressed() {
  img = list.getRandom();
  
}

int index=0; //保存文件用
void keyPressed() {
  
  if(key=='s'||key=='S'){
    save("mywork"+index+".png");
    index++;
  
}

}
