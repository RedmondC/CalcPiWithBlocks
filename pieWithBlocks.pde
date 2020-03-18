void settings(){
    size(ScrX,ScrY);
}

void setup(){
  smallKg = new Block(1,0,30,50);
  largeKg = new Block(10000,-1,60,100);
}


void draw(){
  background(200);
  textAlign(LEFT);
  fill(0);
  text("Pi = 3.14159",5,15);
  text("Count = " + count + " : log100(largeKg.mass) digits of pi",5,30);
  smallKg.collide(largeKg);
  smallKg.draw();
  largeKg.draw();
}
