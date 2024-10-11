// BouncingBall Class Definition
class BouncingBall {
  float x, y;  // Position of the ball
  float speedX;  // Horizontal speed
  float ballSize;  // Size of the main circle (ball)
  
  // Constructor for BouncingBall class
  BouncingBall(float tempX, float tempY, float tempSpeedX, float tempSize) {
    x = tempX;
    y = tempY;
    speedX = tempSpeedX;
    ballSize = tempSize;
  }
  
  // Display the ball using shapes
  void display() {
    // Main circle (ball body)
    fill(255, 100, 100);
    ellipse(x, y, ballSize, ballSize);

    // Eyes
    fill(0);  // Black for eyes
    ellipse(x - ballSize/6, y - ballSize/6, ballSize/8, ballSize/8);
    ellipse(x + ballSize/6, y - ballSize/6, ballSize/8, ballSize/8);

    // Smile (arc for mouth)
    noFill();
    stroke(0);
    arc(x, y + ballSize/8, ballSize/2, ballSize/4, 0, PI);
  }
  
  // Update the position of the ball
  void move() {
    x += speedX;
    
    // Bounce the ball off the edges of the canvas
    if (x > width - ballSize/2 || x < ballSize/2) {
      speedX *= -1;  // Reverse direction on bounce
    }
  }
}

BouncingBall myBall;  // Declare a BouncingBall object

void setup() {
  size(400, 400);
  myBall = new BouncingBall(width/2, height/2, 3, 80);  // Initialize BouncingBall
}

void draw() {
  background(200, 220, 255);  // Light blue background

  // Draw and move the ball
  myBall.display();
  myBall.move();
}
