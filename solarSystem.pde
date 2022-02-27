

Planet sun = new Planet(1000,0,0);
Planet earth = new Planet(20, 700,0);
Planet moon = new Planet(3, 800, 0);
Planet mercury = new Planet(7, -250, 0);
ArrayList<Planet> planets = new ArrayList<Planet>();

void setup(){
  fullScreen();
  background(0);
  noStroke(); 
  
  planets.add(sun);
  planets.add(earth);
  planets.add(moon);
  planets.add(mercury);
  
  for(Planet planet : planets){
    planet.setOtherPlanets(planets);
  }
    moon.setVelocity(0, 1.4);
    earth.setVelocity(0,2.5);
    mercury.setVelocity(0,-4);
    sun.setVelocity(0, -0.01);
}

void draw(){
  translate(width/2, height/2);
  background(0);
  
  for(Planet planet : planets){
    planet.show();
    planet.updateVelocity();
    planet.updatePos();
  }
}
