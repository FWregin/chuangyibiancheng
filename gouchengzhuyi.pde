color colors[] = {#FF9E5B, #FF5E5E, #FFC947, #70D6BC, #C85BAA, #5A8FC2}; //<>//
void setup() {
  size(1500, 1200);
  background(255);
  int seg = 20;
  int w = width / seg;
  for (int i = 0; i < seg; i++) {
    for (int j = 0; j < seg; j++) {
      float x = i * w + w/2;
      float y = j * w + w/2;
      float a = int(random(4)) * PI/2;
      form(x, y, w, 10, a);
    }
  }
}
void draw() {
  float seg = 20;
  float w = width / seg;
  if (frameCount % floor(random(15) + 5) == 0) {

    for (int i = 0; i < seg; i++) {
      for (int j = 0; j < seg; j++) {
        float x = i * w + w/2;
        float y = j * w + w/2;
        float a = int(random(4)) * PI/2;
        form(x, y, w, 10, a);
      }
    }
  }
  saveFrame();
}
void form(float x, float y, float w, float  seg, float a) {
  color col1 =colors[int( random(0, 6))];
  color col2 =colors[int( random(0, 6))];
  while (col1 == col2) {
    col2 =colors[int( random(0, 6))];
  }
  push();
  translate(x, y);
  rotate(a);
  translate(-w/2, -w/2);
  noStroke();
  for (int i=0; i<10; i++) {
    for (int j=0; j<10; j++) {
      if ((i + j) % 2 == 0) fill(col1);
      else fill(col2);
      float p = pow(norm(i, 0, seg-1), 3)*w;
      rect(p, p, p+random(0, 10), p*random(0, 2));
    }
  }
  pop();
}
