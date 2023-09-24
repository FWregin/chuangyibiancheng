int t0=0;
void setup(){
 size(200,200);

}

void draw(){
 int t5=millis()-t0;
 if(t5>5000){
   print("5秒到了");
   t0=millis();
 }

}
