
Star star;

Astro planet1;

Astro planet2;
  Astro moon2_1;

Astro planet3;
  Astro moon3_1;
  Astro moon3_2;

Astro planet4;
  StatSatellite stat;

Astro planet5;


void setup() {
  size(1800, 900, P3D);
  
  star = new Star(80);
  // Dist, radius
  planet1 = new Astro(150, 10);
  planet2 = new Astro(300, 50);
    moon2_1 = new Astro(100, 20);
  planet3 = new Astro(600, 40);
    moon3_1 = new Astro(80, 10);
    moon3_2 = new Astro(150, 15);
  planet4 = new Astro(900, 40);
    stat = new StatSatellite(80);
  planet5 = new Astro(1200, 10);
}

void draw() {
  background(255);
  rotateX(-2*PI/8);
  //rotateX(-2*PI/4);
  translate(width/2, 3*height/4);
  
  pushMatrix();
  star.draw("STAR", color(0, 0, 255), 20);
  popMatrix();
  
  pushMatrix();
  rotateZ(2*PI/8);
  planet1.draw(new Astro[]{}, "Planet 1", color(0, 255, 0, 255), 20);
  popMatrix();
  
  pushMatrix();
  planet2.draw(new Astro[]{}, "Planet 2", color(0, 0, 255, 255), 20);
  moon2_1.draw(new Astro[]{planet2}, "Moon1", color(0, 255, 255, 255), 20);
  popMatrix();
  
  pushMatrix();
  planet3.draw(new Astro[]{}, "Planet 3", color(255, 0, 0, 255), 20);
    pushMatrix();
    moon3_1.draw(new Astro[]{planet3}, "Moon1", color(255, 0, 255, 255), 20);
    popMatrix();
    
    pushMatrix();
    moon3_2.draw(new Astro[]{planet3}, "Moon2", color(255, 0, 255, 255), 20);
    popMatrix();
  popMatrix();
  
  pushMatrix();
  planet4.draw(new Astro[]{}, "Planet 4", color(255, 0, 0, 255), 20);
  stat.draw(new Astro[]{planet4}, "Stat");
  popMatrix();
  
  pushMatrix();
  planet5.draw(new Astro[]{}, "Planet 5", color(255, 0, 0, 255), 20);
  popMatrix();
  
  
  star.move(2*PI/2000);
  
  // rotation, translation
  planet1.move(2*PI/2000, 2*PI/2000);
  planet2.move(2*PI/2000, 2*PI/2000);
  moon2_1.move(2*PI/2000, 2*PI/2000);
  
  planet3.move(2*PI/2000, 2*PI/2000);
  moon3_1.move(2*PI/2000, 2*PI/2000);
  moon3_2.move(2*PI/2000, 2*PI/2000);
  
  planet4.move(2*PI/2000, 2*PI/2000);
  planet5.move(2*PI/2000, 2*PI/2000);
  
}
