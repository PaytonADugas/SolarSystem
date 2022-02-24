

Planet sun = new Planet(100,0,0);
Planet earth = new Planet(10, 400,0);
Planet moon = new Planet(3, 500, 0);
ArrayList<Planet> planets = new ArrayList<Planet>();

void setup(){
  size(1500,1500);
  background(0);
  noStroke(); 
  
  planets.add(sun);
  planets.add(earth);
  planets.add(moon);
  sun.setOtherPlanets(planets);
  earth.setOtherPlanets(planets);
  moon.setOtherPlanets(planets);
  moon.setVelocity(0, 1);
  earth.setVelocity(0,3);
  sun.setVelocity(0,-0.3);
}

void draw(){
  translate(width/2, height/2);
  background(0);
  sun.show();
  sun.updateVelocity();
  sun.updatePos();
  earth.show();
  earth.updateVelocity();
  earth.updatePos();
  moon.show();
  moon.updateVelocity();
  moon.updatePos();
}
