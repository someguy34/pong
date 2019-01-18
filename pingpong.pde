int x, y, w, h, speedX, speedY;
int paddleX, paddleY, paddleW, paddleH, paddleS;
boolean up, down;

void setup() {
  size(500,500);
  //background(0);
  
  x = width/2;
  y = height/2;
  w = 10;
  h = 10;
  speedX = 4;
  speedY = 3;
  
  rectMode(CENTER);
  paddleX = 25;
  paddleY = height/3;
  paddleW = 15;
  paddleH = 50;
  paddleS = 7;
}

void draw() {
  background(0);
  rect(x, y, w, h);
  
  DrawPaddle();
  movePaddle();
  restrictPaddle();
  contactPaddle();


  if ( x >  width - w/2) {
    speedX = -speedX;
  }
  else if (x < 0 + w/2 ) {
    speedX = -speedX;
  }
  if ( y >  height - h/2) {
    speedY = -speedY;
  }
  else if (y < 0 + h/2) {
    speedY = -speedY;
  }  

  x = x + speedX;
  y = y + speedY;

}
