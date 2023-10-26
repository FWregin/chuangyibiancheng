int numFrames = 8;
int frame = 0;
String sourceImage = ("1");//("2");//("3");//(4");//"5";//"6";//"7";//
PImage[] images = new PImage[numFrames];
PImage opticalIlusionImage;
int stripeWidth = 1;
int numOfStripeUint = 8;

float tx = 0;

void settings(){
  for (int i = 0; i < images.length; i ++) {
    images[i] = loadImage(sourceImage + "0" + (i+1)+".jpg");
  }
  size(images[0].width, images[0].height);
}

void setup() {
  frameRate(4);
  background(255);

  opticalIlusionImage = createImage(images[0].width, images[0].height, RGB);
  
  getPixels();
  
  opticalIlusionImage.save("opticalIlusionImage"+sourceImage+".png");
}

void draw() {
  background(255);
  
  image(opticalIlusionImage, 0, 0);
  
  showSlider();
  saveFrame();
}

void getPixels() {
  int numOfUnits = width / (numOfStripeUint * stripeWidth);
  for (int j = 0; j < numOfUnits; j ++) {
    for (int k = 0; k < numOfStripeUint; k ++) {
      for (int m = 0; m < stripeWidth; m ++) {
        for (int n = 0; n < height; n ++) {
          int loc = m + stripeWidth * k + (numOfStripeUint * stripeWidth) * j + n * width;
          opticalIlusionImage.pixels[loc] = images[k].pixels[loc];
        }
      }
    }
  }
}

void showSlider() {
  translate(tx, 0);
  for (int i = 0; i< width/4; i++) {
    strokeWeight((numOfStripeUint - 1) * stripeWidth);
    stroke(0);
    line(i*(numOfStripeUint * stripeWidth), 50, i*(numOfStripeUint * stripeWidth), height-50);
  }
}

void mouseDragged() {
  tx = tx + (mouseX - pmouseX);
}
