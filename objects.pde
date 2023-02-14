class Ball {
  int xPos, yPos;
  int xSpeed;
  color c;

  Ball(int x, int y, int speed, color col) {
    xPos = x;
    yPos = y;
    xSpeed = speed;
    c = col;
  }

  void move() {
    xPos += xSpeed;
  }

  void display() {
    fill(c);
    ellipse(xPos, yPos, 50, 50);
  }
}

Ball ball;
Ball ball2;
Ball ball3;

void setup() {
  size(600, 400);
  color c1 = color(255, 0, 0);
  ball = new Ball(0, 200, 5, c1);
  color c2 = color(0, 0, 255);
  ball2 = new Ball(0, 300, 3, c2);
  color c3 = color(0, 255, 0);
  ball3 = new Ball(0, 100, 1, c3);
}

void draw() {
  background(255, 255, 255);
  ball.move();
  ball.display();
  ball2.move();
  ball2.display();
  ball3.move();
  ball3.display();
}
