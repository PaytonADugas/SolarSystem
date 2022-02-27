class Planet{
   public ArrayList<Planet> planets;
   public float mass;
   public PVector pos;
   public PVector velocity = new PVector(0,0);
   
   private float G = 5;
   
   
   Planet(float mass, float x, float y){
     this.mass = mass;
     this.pos = new PVector(x,y);
   }
   
   void setOtherPlanets(ArrayList<Planet> planets){
     this.planets = planets;
   }
   
   float distance(PVector m1, PVector m2){
     return (float)Math.sqrt((m2.x-m1.x)*(m2.x-m1.x)+(m2.y-m1.y)*(m2.y-m1.y));
   }
   
   void setVelocity(float x,float y){
     this.velocity = new PVector(x,y);
   }
   
   void updateVelocity(){
     for(Planet planet : this.planets){
       if(planet.pos == this.pos)
         continue;
       float r = distance(planet.pos, this.pos);
       float F = (float)G*(planet.mass*this.mass)/(r*r);
       float a = -F/this.mass;
       float theta = (float)Math.atan2(this.pos.y-planet.pos.y, this.pos.x-planet.pos.x);
       float a_x = cos(theta)*a;
       float a_y = sin(theta)*a;
       this.velocity = new PVector(this.velocity.x + a_x, this.velocity.y+a_y);
     }
   }
   
   void updatePos(){
     pos = new PVector(pos.x + this.velocity.x, pos.y + this.velocity.y); 
   }
   
   void show(){
     if(this.mass >=1000)
       ellipse(pos.x,pos.y,200,200);
     else
       ellipse(pos.x,pos.y, mass, mass);
   }
}
