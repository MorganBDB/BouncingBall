float circleX;
float circleY;

float vx;
float vy;

void setup() {
  size(640, 360);
  circleX = 50;
  circleY = 180;
  vx = 10;
  vy = 10;
}

void draw() {
  background(50);
  fill(255);
  ellipse(circleX, circleY, 24, 24);

  if (circleX <= 0 || circleX >= width) {
    vx = vx * -1;
  }

  if (circleY <= 0 || circleY >= height) {
    vy = vy * -1;
  }
  
  circleY = circleY + vy;
  circleX = circleX + vx;
}
