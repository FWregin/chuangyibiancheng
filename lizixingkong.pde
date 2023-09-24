star[] stars=new star[600];
void setup() {
  size(600, 600);
  for (int i=0; i<stars.length; i++) {
    stars[i]=new star();
  }
}
void draw() {
  background(0);
  translate(width/2, height/2);
  for (int i=0; i<stars.length; i++) {
    stars[i].update();
    stars[i].show();
    stars[i].move();

  }
  saveFrame();
}
