class star {
  float a ;
  float b;
  float c;
  float speed;
  float d;
  float sa, sb,r;
  star() {
    a=random(-width, width);
    b=random(-height, height);
    c=random(width);
  }
  void update() {
    speed=map(mouseX, 0, 600, 0, 10);
    c=c-speed;
    if (c<=0) {
      c=random(width);
    }
  }
  void show() {
    noStroke();
    d=map(abs(sa), 0, 600, 0, 1000);
    fill(255, 255, 255, d);
    sa=map(a/c, 0, 1, 0, width);
    sb=map(b/c, 0, 1, 0, height);
    r=map(c, 0, width, 16, 0);

    ellipse(sa, sb, r, r);
  }
  void move(){
    if(keyPressed){
     fill(random(255),random(255),random(255),d);
     ellipse(sa, sb, r, r);
    }
}
}
 
