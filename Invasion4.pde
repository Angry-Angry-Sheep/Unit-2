import processing.sound.*;
SoundFile file;

float sensitivity = 5;
float xOffset, yOffset;
float bg1, bg2, bg3;
float fg1, fg2, fg3;
int deathStar;
float capitalShip1, capitalShip2;
float tank1, tank2, tank3, tank4, tank5, tank6, tank7, tank8, tank9, tank10, tank11;
float carrier1, carrier2, carrier3;
float tie1X, tie1Y, tie2X, tie2Y, tie3X, tie3Y, tie4X, tie4Y, tie5X, tie5Y, tie6X, tie6Y,
tie7X, tie7Y, tie8X, tie8Y, tie9X, tie9Y;

void setup() {
  file = new SoundFile(this, "music.mp3");
  file.play();
  
  size(800, 600);
  
  // Background war base
  bg1 = 0;
  bg2 = 400;
  bg3 = 800;
  
  // Foreground war base
  fg1 = 0;
  fg2 = 400;
  fg3 = 800;
  
  // Initialize Death Star position
  deathStar = 700;
  
  // Initialize Carrier positions
  carrier1 = 800;
  carrier2 = 400;
  carrier3 = 1075;
  
  // Initialize Capital Ship positions
  capitalShip1 = 600;
  capitalShip2 = 150;
  
  // Initialize Tank positions
  tank1 = 800;
  tank2 = 1000;
  tank3 = 1200;
  tank4 = 1200;
  tank5 = 800;
  tank6 = 1200;
  tank7 = 1000;
  tank8 = 800;
  tank9 = 1200;
  tank10 = 1000;
  tank11 = 800;
  
  // Initialize Ties
  tie1X = 100;
  tie1Y = 50;
  tie2X = 300;
  tie2Y = 70;
  tie3X = 500;
  tie3Y = 30;
  tie4X = 200;
  tie4Y = 100;
  tie5X = 400;
  tie5Y = 20;
  tie6X = 600;
  tie6Y = 40;
  tie7X = 500;
  tie7Y = 65;
  tie8X = 800;
  tie8Y = 75;
  tie9X = 200;
  tie9Y = 55;
}

void draw() {
  if (mousePressed && false)
  {
    xOffset = ((mouseX-400))/-sensitivity;
    yOffset = ((mouseY-300))/-sensitivity;
  }
  pushMatrix();
  translate(xOffset, yOffset);
  
  // Sky
  background(4,0,87);
  
  // Death Star
  fill(33,33,55);
  ellipse(deathStar, 100, 150, 150);
  fill(53,53,70);
  ellipse(deathStar-30, 100-30, 40, 40);
  shootLaser(640,80,665,54, 2);
    shootLaser(640,80,665,84, 2);
    shootLaser(640,80,654,70, 2);
    shootLaser(640,80,682,70, 2);
    //shootLaser(640,80,0,600, 3);
  
  
  // Tie fighters
  fill(135);
  drawTie(tie1X, tie1Y, 1);
  drawTie(tie2X, tie2Y, 1);
  drawTie(tie3X, tie3Y, 1);
  drawTie(tie4X, tie4Y, 1);
  drawTie(tie5X, tie5Y, 1);
  drawTie(tie6X, tie6Y, 1);
  drawTie(tie7X, tie7Y, 1);
  drawTie(tie8X, tie8Y, 1);
  drawTie(tie9X, tie9Y, 1);
  tie1X = tie1X - 1.1;
  tie2X = tie2X - 1;
  tie3X = tie3X - 1.4;
  tie4X = tie4X - 1.8;
  tie5X = tie5X - 0.9;
  tie6X = tie6X - 1.2;
  tie7X = tie7X - 1.8;
  tie8X = tie8X - 0.9;
  tie9X = tie9X - 1.2;


  if (tie1X < -10 - xOffset) 
    tie1X = 810 - xOffset;
  if (tie2X < -10 - xOffset) 
    tie2X = 810 - xOffset;
  if (tie3X < -10 - xOffset) 
    tie3X = 810 - xOffset;
  if (tie4X < -10 - xOffset) 
    tie4X = 810 - xOffset;
  if (tie5X < -10 - xOffset) 
    tie5X = 810 - xOffset;
  if (tie6X < -10 - xOffset) 
    tie6X = 810 - xOffset;
  if (tie7X < -10 - xOffset) 
    tie7X = 810 - xOffset;
  if (tie8X < -10 - xOffset) 
    tie8X = 810 - xOffset;
  if (tie9X < -10 - xOffset) 
    tie9X = 810 - xOffset;
    
  drawCapitalShip(capitalShip1,200,0.5);
  drawCapitalShip(capitalShip2,330,0.75);
  
  // Move capital ships
  capitalShip1 -= 0.1;
  capitalShip2 -= 0.2;
  
  // Loop capital ships
  if (capitalShip1 < -300 - xOffset) 
    capitalShip1 = 1000 - xOffset;
  if (capitalShip2 < -300 - xOffset) 
    capitalShip2 = 1000 - xOffset;
  
  //Background warbases
  fill(50, 50, 80);
  rect(bg1, 200, 200, 400);
  rect(bg2, 220, 220, 380);
  rect(bg3, 210, 180, 390);
  
  // Move background warbases
  bg1 = bg1 + 0.5;
  bg2 = bg2 + 0.5;
  bg3 = bg3 + 0.5;
  
  // Loop background warbases
  if (bg1 > 800 - xOffset) 
     bg1 = -800 + xOffset;
  if (bg2 > 800 - xOffset) 
     bg2 = -800 + xOffset;
  if (bg3 > 800 - xOffset)
     bg3 = -800 + xOffset;
  
  drawCarrier(carrier2,180,0.75);
  drawCarrier(carrier3,220,0.70);
  drawCarrier(carrier1,250,1.25);
  
  carrier1 = carrier1 - 0.6;
  carrier2 = carrier2 - 0.3;
  carrier3 = carrier3 - 0.3;
  if (carrier1 < -200 - xOffset) 
    carrier1 = 1000 - xOffset;
  if (carrier2 < -200 - xOffset) 
    carrier2 = 1000 - xOffset;
  if (carrier3 < -200 - xOffset) 
    carrier3 = 1000 - xOffset;
  
  drawTank(tank6, 482, 0.5);
  drawTank(tank7, 482, 0.5);
  drawFlyingTank(tank8, 445, 0.5);
  
  // Foreground warbases (faster movement)
  fill(80, 80, 120);
  rect(fg1, 250, 200, 350);
  rect(fg2, 270, 220, 330);
  rect(fg3, 260, 180, 340);
  
  // Move foreground warbases
  fg1 = fg1 + 2.5;
  fg2 = fg2 + 2.5;
  fg3 = fg3 + 2.5;
  
  // Loop war bases
  if (fg1 > 800 - xOffset) 
    fg1 = -800 + xOffset;
  if (fg2 > 800 - xOffset) 
    fg2 = -800 + xOffset;
  if (fg3 > 800 - xOffset) 
    fg3 = -800 + xOffset;
  
  // Ground + Road
  fill(20, 20, 40);
  rect(-800, 500, 1800, 100);
  
  fill(30, 30, 30);
  rect(-800, 550, 1800, 50);
  
  fill(20, 20, 40);
  rect(-800, 600, 1800, 200);
  
  // Tanks
  drawFlyingTank(tank4, 420, 0.9);
  drawFlyingTank(tank5, 440, 0.9);
  drawTank(tank1, 495, 1);
  drawTank(tank2, 500, 1);
  drawTank(tank3, 505, 1);
  
  drawTank(tank9, 585, 1.4);
  drawTank(tank10, 585, 1.4);
  drawTank(tank11, 585, 1.4);
  
  // Move tanks
  tank1 = tank1 - 1.5;
  tank2 = tank2 - 1.5;
  tank3 = tank3 - 1.5;
  tank4 = tank4 - 2.1;
  tank5 = tank5 - 2.1;
  tank6 = tank6 - 1.1;
  tank7 = tank7 - 1.1;
  tank8 = tank8 - 1.4;
  tank9 = tank9 - 2;
  tank10 = tank10 - 2;
  tank11 = tank11 - 2;
  
  // Loop tanks
  if (tank1 < -50 - xOffset) 
    tank1 = 850 - xOffset;
  if (tank2 < -50 - xOffset) 
    tank2 = 850 - xOffset;
  if (tank3 < -50 - xOffset) 
    tank3 = 850 - xOffset;
  if (tank4 < -50 - xOffset) 
    tank4 = 850 - xOffset;
  if (tank5 < -50 - xOffset) 
    tank5 = 850 - xOffset;
  if (tank6 < -50 - xOffset) 
    tank6 = 850 - xOffset;
  if (tank7 < -50 - xOffset) 
    tank7 = 850 - xOffset;
  if (tank8 < -50 - xOffset) 
    tank8 = 850 - xOffset;
  if (tank9 < -100 - xOffset) 
    tank9 = 900 - xOffset;
  if (tank10 < -100 - xOffset) 
    tank10 = 900 - xOffset;
  if (tank11 < -100 - xOffset) 
    tank11 = 900 - xOffset;
  
    popMatrix();
} 

void shootLaser(float originX, float originY, float targetX, float targetY, float t){
  stroke(13,255,0);
  strokeWeight(t*1.4);
  line(originX, originY, targetX, targetY);
  stroke(255);
  strokeWeight(t);
  line(originX, originY, targetX, targetY);
  
  stroke(0);
  strokeWeight(1);
}

void drawCapitalShip(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  // Command tower
  fill(40);
  rect(100, -77.5, 20, 20, 5);
  fill(60);
  rect(80, -70, 60, 30, 5);

  // Thruster
  fill(0, 240, 255);
  ellipse(250, 0, 20, 40);

  // Main hull
  fill(50);
  beginShape();
  vertex(-180, -12);
  vertex(200, -60);
  vertex(250, -30);
  vertex(250, 30);
  vertex(200, 60);
  vertex(-150, 12);
  endShape(CLOSE);

  // Hull details
  fill(10);
  rect(110, -10, 80, 4);
  rect(-50, -10, 100, 4);

  popMatrix();
}


void drawCarrier(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  rotate(-0.05);
  
  // Engine glow
  fill(255, 150, 0);
  ellipse(90, 20, 15, 15);
  ellipse(70, 20, 15, 15);
  ellipse(50, 20, 15, 15);
  
  ellipse(90-150, 20, 15, 15);
  ellipse(70-150, 20, 15, 15);
  ellipse(50-150, 20, 15, 15);
  
  // Command bridge
  fill(40);
  rect(-30,0,2,-40);
  fill(100);
  rect(-70, -30, 40, 15, 5);

  // Main body
  fill(80);
  beginShape();
  vertex(100, -20);
  vertex(-120, -20);
  vertex(-160, 0);
  vertex(-120, 20);
  vertex(100, 20);
  endShape(CLOSE);
  
  // Surface details
  fill(50);
  rect(-80, -10, 80, 5);
  rect(-90, -10, 40, 5);
  
  popMatrix();
}

void drawFlyingTank(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);
  
  // Command tower
  fill(50);
  rect(0, -29, -70, 5);
  rotate(-0.15);
  fill(120);
  rect(-20, -35, 40, 20, 5);
  
  // Engines
  fill(255, 150, 0);
  ellipse(-40, 20, 10, 10);
  ellipse(0, 20, 10, 10);
  ellipse(40, 20, 10, 10);
  
  // Body
  fill(100);
  rect(-50, -20, 100, 40, 10);
  
  // Details
  fill(70);
  rect(-45, -10, 90, 5);
  
  popMatrix();
}

void drawTank(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  // Tank Treads (Side Tracks)
  fill(50);
  ellipse(-35, 30, 25, 25);
  ellipse(35, 30, 25, 25);
  fill(80);
  rect(-50, 10, 100, 20);  // Main track base

  // Tank Body (Armored)
  fill(100);
  rect(-40, -15, 80, 30, 8);  // Slight rounded edges
  
  // Cannon Barrel
  fill(50);
  rect(0, -25, -55, 2);
  rect(0, -20, -55, 2);

  // Turret (Imperial-like cockpit)
  fill(150);
  ellipse(0, -20, 40, 25);
 

  // Turret Hatch (for details)
  fill(0);
  ellipse(0, -22, 8, 8);

  popMatrix();
}

void drawTie(float x, float y, float s) {
  pushMatrix();
  translate(x, y);
  scale(s);

  ellipse(0, 0, 10, 10);
  strokeWeight(3);
  stroke(75,75,95);
  line(-8, 5,5, 5);
  line(-8, -5,5, -5);
  strokeWeight(1);
  stroke(0);
  popMatrix();
}
