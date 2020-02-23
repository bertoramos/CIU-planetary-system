
PImage bg; // Background image

Star star;

Astro planet1;

Astro planet2;
  Astro moon2_1;

Astro planet3;
  Astro moon4_1;
  Astro moon4_2;

Astro planet4;
  StatSatellite stat;

Astro planet5;


void setup() {
  size(1800, 900, P3D);
  
  bg = loadImage(".\\img\\background\\bg.jpg");
  bg.resize(width, height);
  
  star = new Star(60, loadImage(".\\img\\texture\\sraf.jpg"));
  // Dist, radius
  planet1 = new Astro(150, 10, loadImage(".\\img\\texture\\gyptian.png")); // gyptian - dry
  planet2 = new Astro(300, 40, loadImage(".\\img\\texture\\lyra.png")); // lyra - martian
    moon2_1 = new Astro(100, 20, loadImage(".\\img\\texture\\pantalaimon.png")); // pantalaimon - rock
  planet3 = new Astro(600, 40, loadImage(".\\img\\texture\\cittagazze.png")); // cittàgazze - tropicla
    stat = new StatSatellite(80); // S-638
  planet4 = new Astro(900, 40, loadImage(".\\img\\texture\\svalbard.png")); // Svalbard - gas
    moon4_1 = new Astro(80, 10, loadImage(".\\img\\texture\\amber.png")); // Amber - rock
    moon4_2 = new Astro(150, 15, loadImage(".\\img\\texture\\iorek.png")); // Iorek - rock
  planet5 = new Astro(1200, 10, loadImage(".\\img\\texture\\bolvangar.png")); // Bolvangar - ice
}

color col = color(255, 255, 255, 255);

void draw() {
  background(bg);
  
  ambientLight(100, 100, 100);
  rotateX(-2*PI/16);
  translate(width/2, height/2);
  pointLight(255, 255, 255, 0, 0, 0);
  
  pushMatrix();
  star.draw("Sraf", col, 20);
  popMatrix();
  
  pushMatrix();
  rotateZ(2*PI/8);
  planet1.draw(new Astro[]{}, new float[][]{{},{},{2*PI/8}}, "Gyptian", col, 20);
  popMatrix();
  
  pushMatrix();
  planet2.draw(new Astro[]{}, "Lyra", col, 50);
  moon2_1.draw(new Astro[]{planet2}, "Pantalaimon", col, 20);
  popMatrix();
  
  pushMatrix();
  planet3.draw(new Astro[]{}, "Cittàgazze", col, 50);
  stat.draw(new Astro[]{planet3}, "S-638", col, 20);
  popMatrix();
  
  pushMatrix();
  planet4.draw(new Astro[]{}, "Svalvard", col, 40);
    pushMatrix();
    moon4_1.draw(new Astro[]{planet4}, "Iorek", col, 20);
    popMatrix();
    
    pushMatrix();
    moon4_2.draw(new Astro[]{planet4}, "Amber", col, 20);
    popMatrix();
  popMatrix();
  
  pushMatrix();
  planet5.draw(new Astro[]{}, "Bolvangar", col, 20);
  popMatrix();
  
  
  star.move(2*PI/2000);
  
  // rotation, translation
  planet1.move  (+2*PI/500, +2*PI/200);
  planet2.move  (-2*PI/400, +2*PI/400);
    moon2_1.move(+2*PI/700, -2*PI/90);
  
  planet3.move  (-2*PI/200, -2*PI/600);
  
  planet4.move  (+2*PI/800, +2*PI/800);
    moon4_1.move(+2*PI/100, -2*PI/90);
    moon4_2.move(+2*PI/800, +2*PI/100);
  planet5.move  (-2*PI/500, -2*PI/850);
  
  
  /*
  float an = 2*PI/2000;
  
  star.move(an);
  
  // rotation, translation
  planet1.move  (an, an);
  planet2.move  (an, an);
    moon2_1.move(an, an);
  
  planet3.move  (an, an);
  
  planet4.move  (an, an);
    moon4_1.move(an, an);
    moon4_2.move(an, an);
  planet5.move  (an, an);
  */
}
