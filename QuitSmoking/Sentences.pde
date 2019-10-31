class Sentences {
  float x, y, size, speed;
  int r, g, b, a;
  String words;
  PFont font;
  float Distance;
  int count=0;
  float ac,ab,z,rr;
  boolean as,bs;

  Sentences(String Words, float Size, float posx, float posy, int R, int G, int B, int A, float Speed) {
    x=posx;
    y=posy;
    r=R;
    g=G;
    b=B;
    a=A;
    speed=Speed;
    words=Words;
    size=Size;
    ac=0.5;
    ab=0.5;
    as=false;
    bs=false;
    rr=random(0,1);
  }
  
  void display() {
    fill(r, g, b, a);
    text(words, x, y);
    font = createFont("GOTHICB.TTF", size);
    textFont(font);
  }

  void discard(float t) {
    x+=speed+t*rr;
    y-=speed+t*rr;
  }

  void fadeOut(float t) {
  a-=t*rr;
  }
  
  void pop(float t){
    size+=t/(10*rr);
  }
  
  void Reverse(){
  if(x>640||y>360||y<0){
  x=359;
  y=187;
  size=random(1,3);
  a=255;
  }
  }
  
  void Acceleration() {
  if (ac>=0.99) {
    as=true;
  } else if (ac<=0.5) {
    as=false;
  }
  if (as) {
    ac-=0.01;
  } else {
    ac+=0.01;
  }

  if (ab>=0.99) {
    bs=true;
  } else if (ab<=0.5) {
    bs=false;
  }
  if (bs) {
    ab-=0.01;
  } else {
    ab+=0.01;
  }
}
}
