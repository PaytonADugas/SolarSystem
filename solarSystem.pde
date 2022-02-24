

Planet sun = new Planet(100,0,0);
Planet earth = new Planet(10, 400,0);
Planet moon = new Planet(3, 500, 0);
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
    moon.setVelocity(0, 1);
    earth.setVelocity(0,3);
    mercury.setVelocity(0,-4);
    sun.setVelocity(0, -0.1);
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
