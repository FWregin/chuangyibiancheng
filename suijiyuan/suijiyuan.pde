void setup() {
  size(500, 500);
  background(160, 160, 160);
}

void draw() {
  float x = random(0, 500);
  float y=random(0, 500);
  float z=random(0, 100);
  float a=map(mouseX, 0, 500, 10, 200);
  noStroke();
  fill(255- mouseX%255, 255-mouseY%255, x, a);
  ellipse(x, y, z, z);
}
