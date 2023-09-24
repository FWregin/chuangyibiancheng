void setup(){
  size(800,400);
}
void draw(){
  background(255);
  stroke(0);
  noFill();
  translate(400,0);
  rotate(PI/2);
  drawsq(0,height/2,200);
 
}
  
  void drawsq(float x,float y ,float a){
    rect(x,y,a,a);
   
    if(a>10){
      a=a/2;
      drawsq(x,y-a,a);
      drawsq(x+2*a,y+a,a);
    }
    
  }
