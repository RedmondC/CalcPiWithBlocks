class Block{
  
   float mass,velocity,edgeSize,x,y;
   
   Block(float mass, float velocity, float edgeSize,float x){
    
     this.mass = mass;
     this.velocity = velocity;
     this.edgeSize = edgeSize;
     this.x = x;
     this.y = ScrY-100-edgeSize;
     
   }
  
    void draw(){
      x += velocity;
      textAlign(CENTER);
      fill(0);
      text(mass + "Kg", x+(edgeSize/2.0),y - 5);
      fill(255);
      rect(x,y,edgeSize,edgeSize);
    }
  
   void collide(Block block){
      if(this.x + this.edgeSize >= block.x){
        this.x -= this.velocity;
        float u1 = this.velocity,
        u2 = block.velocity,
        m1 = this.mass,
        m2 = block.mass;
        count++;
        this.velocity = (((m1 - m2 *u1)/(m1 + m2)) + ((2 * m2 * u2)/(m1 + m2)));
        block.velocity = (((2* m1)/(m1 + m2))*u1) + (((m2 - m1)/(m1 + m2))*u2);

      }else if(this.x <= 0){
        count++;
        this.x = 1;
        this.velocity *= -1;
      }
   }
 }
