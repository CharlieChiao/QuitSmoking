import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioInput in;

Sentences s1, s2, s3, s4, s5, s6, s7, s8;
float ac=0.3, ab=0.1, x=0, y=0, x1=30, y1=0, z, t;
int a;
boolean as=false, bs=false, ss=true;
PImage img, img1, img2;
PFont font;
String letters="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
float stepSize=5.0;
float counter=0;

void setup() {
  size(640, 360);
  img=loadImage("Smoker.jpg");
  img2=loadImage("Skeleton.png");
  s1 = new Sentences("Fuck", 1, 359, 187, 255, 255, 255, 255, 1);
  s2 = new Sentences("Shit", 1, 359, 187, 255, 255, 255, 255, 0.8);
  s3 = new Sentences("You", 1, 359, 187, 255, 255, 255, 255, 0.9);
  s4= new Sentences("Dead", 1, 359, 187, 255, 255, 255, 255, 1.5);
  s5 = new Sentences("Ass", 1, 359, 187, 255, 255, 255, 255, 1);
  s6 = new Sentences("Smoke", 1, 359, 187, 255, 255, 255, 255, 0.9);
  s7= new Sentences("Bad", 1, 359, 187, 255, 255, 255, 255, 1.5);
  s8 = new Sentences("Poop", 1, 359, 187, 255, 255, 255, 255, 1);

  minim = new Minim(this);
  in = minim.getLineIn();
}

void draw() {
  background(0);
  for (int i=0; i<in.bufferSize()-1; i++) {
    z = abs(in.left.get(i)*10);
  }
  
  if(100*z>10){
  a+=10;
  }else if(100*z<10){
  a-=1;
  }
  
  tint(255);
  image(img,0,0);
  tint(255,a);
  image(img2,0,0);

    s1.pop(z);
    s1.discard(z);
    s1.fadeOut(z);
    s1.display();
    s1.Reverse();

    s2.pop(z);
    s2.discard(z);
    s2.fadeOut(z);
    s2.display();
    s2.Reverse();

    s3.pop(z);
    s3.discard(z);
    s3.fadeOut(z);
    s3.display();
    s3.Reverse();

    s4.pop(z);
    s4.discard(z);
    s4.fadeOut(z);
    s4.display();
    s4.Reverse();

    s5.pop(z);
    s5.discard(z);
    s5.fadeOut(z);
    s5.display();
    s5.Reverse();
    
  noStroke();
  fill(100+z*200, 100+z*20, 100+z*20);
  rect(359, 187, 3, 5);
}

void mousePressed() {
  println(mouseX,mouseY);
}

//void DisplayPixels() {
//      font=createFont("GOTHICB.TTF", 12);
//      textFont(font);
//      textSize(10);
//      counter=map(gridY,0,40,1,26);
//      char newLetter = letters.charAt(int(counter));
//      stepSize = textWidth(newLetter);
//      fill(c);
//      text(newLetter, posX, posY);
//}
