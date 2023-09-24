float a=random(0, 800);
int b=0;
float c=random(10, 100);
void setup() {
  size(800, 800);
}
void draw() {
  background(255, 255, 255);
  ellipse(a, b, c, c);

  pushMatrix();
  if (b>height) {
    b=0;
    c=random(10, 100);
    a=random(0, 800);
    ellipse(a, b, c, c);
  } else {
    b=b+5;
    float dis=dist(mouseX+100, mouseY-200, a, b);
    if (dis<90) {
      a=mouseX+100;
      b=mouseY-200;
    }
  }
  popMatrix();
  strokeWeight(5);
  line(mouseX+100, mouseY-200, mouseX-50, mouseY+100);
}
