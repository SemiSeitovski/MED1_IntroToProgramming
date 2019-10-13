int r = 60;
float ballX;
float ballY;
float fHeadX = 300;
float fHeadY = 200;
int xSpeed = 2;
int ySpeed = 2;
int xDir = 1;
int yDir = 1;

void setup() {
  size(600, 400);
}

void draw() {
  background(#43AF76);

  //Number of petals
  fill(#FFA005);
  for (float i=0; i<PI*2; i+=2*PI/5) {
    ballX = fHeadX + r*cos(i);
    ballY = fHeadY + r*sin(i);  
  
  //Petals
  ellipse(ballX, ballY, r, r);
  }
  
  //Flower Head
  fill(20, 0, 100);
  ellipse(fHeadX, fHeadY, r*1.2, r*1.2);
  fHeadX = fHeadX + (xSpeed * xDir);
  fHeadY = fHeadY + (ySpeed * yDir);
  
  if (fHeadX > width - r/2|| fHeadX < r/2) {
    xDir *= -1;
  }
  if (fHeadY > height - r/2|| fHeadY < r/2) {
    yDir *= -1;
  }
}
