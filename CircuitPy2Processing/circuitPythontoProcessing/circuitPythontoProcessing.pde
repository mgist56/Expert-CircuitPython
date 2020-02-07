// CircuitPython to Processing
// River Malia and Meg Gist

import processing.serial.*;
Serial myPort = new Serial(this, Serial.list()[2], 9600);
int cx, cy;
float potRadius;
float diameter;
// Diameter for the gauge background

void setup() {
  size(500, 500);
  stroke(255);
  int radius = min(width, height) / 2;
  potRadius = radius * 0.8;
  diameter = radius * 1.8;

  cx = width / 2;
  cy = height / 2;
  // Keeps the center centered
}
void draw() {
  if (myPort.available() > 0)
  { 
    int myNum = myPort.read();
    // Data from UART port connected to potentiometer
    println(myNum);
   
    background(118, 71, 249);
    // Draw window background
    // Nice purple color cause why not
    
    fill(80);
    noStroke();
    ellipse(cx, cy, diameter, diameter);
    // Draw the gauge background

    float p = map(myNum, 0, 255, TWO_PI, 0) - HALF_PI;
    // Map to TWO_PI, 0 to make gauge go clockwise
    // Subtract HALF_PI to make them start at the top
    
    stroke(255);
    strokeWeight(2);
    line(cx, cy, cx + cos(p) * potRadius, cy + sin(p) * potRadius);
    // Draw the hand of the gauge
    
    strokeWeight(5);
    beginShape(POINTS);
    for (int a = 0; a < 360; a+=6) {
      float angle = radians(a);
      float x = cx + cos(angle) * potRadius;
      float y = cy + sin(angle) * potRadius;
      vertex(x, y);
    }
    // Draw the ticks of the gauge
    endShape();
  }
}
