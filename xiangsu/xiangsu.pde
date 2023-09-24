size(500, 500);
loadPixels();
  for (int x=0; x<width; x++){
    for (int y=0; y<height; y++){
      int loc = width * y + x;
      float colorv=dist(width/2, height/2, x, y);
      pixels[loc]=color(colorv);
    }  
  }
updatePixels();
