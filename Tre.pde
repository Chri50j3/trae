float vinkel = 8;
int gren,frame;

void setup(){
  size(700,500);
  background(255);
  strokeWeight(2);
  stroke(0,100,0);
}

void draw(){
  gren = 0;
  if(frameCount%2 == 0) 
    frame ++;
  
  background(255);
  tegnGren(width/2,height,100,PI/2);
}

void keyPressed(){
  if(key == 'a')
    vinkel -= 1;
  if(key == 'd')
    vinkel += 1;
}

void tegnGren(float x, float y, float l, float v){
  PVector pv = new PVector(x,y); 
  float x1 = pv.x + cos(v)*l,y1 = pv.y-sin(v)*l;
  
  line(pv.x,pv.y,x1,y1);
  
  if(l > 10 && gren<frame){
      gren++;
      tegnGren(x1,y1,l*0.8,v+PI/vinkel);
      tegnGren(x1,y1,l*0.8,v-PI/vinkel);
  }
}
