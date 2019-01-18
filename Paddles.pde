void DrawPaddle() {
  fill(255);
  rect(paddleX, paddleY, paddleW, paddleH);
  
}

void movePaddle() {
  if(up) {
    paddleY = paddleY - paddleS;
  }
  if(down) {
    paddleY = paddleY + paddleS;
  }
}

void restrictPaddle() {
  if(paddleY - paddleH/2 < 0) {
    paddleY = paddleY + paddleS;
  }
  if(paddleY + paddleH/2 > height) {
    paddleY = paddleY - paddleS;
  }
}

void contactPaddle() {
  if(x - w/2 < paddleX + paddleW/2 && y - h/2 < paddleY + paddleH/2 && y - h/2 > paddleY - paddleH/2) {
   if(speedX < 0){
    speedX = -speedX;
   }
  }
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    up = true;
  }
  if (key == 's' || key == 'S') {
    down = true;
  }
}

void keyReleased() {
  if (key == 'w' || key == 'W') {
    up = false;
  }
  if (key == 's' || key == 'S') {
    down = false;
  }
}
