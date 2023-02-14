class Ship {
  int xPos, yPos;
  int xSpeed;
  PImage ship;

  // Make ship constructor
  Ship(int x, int y, int speed) {
    xPos = x;
    yPos = y;
    xSpeed = speed;
    ship = loadImage("Ship.png");
  }

  // Move across x axis at xSpeed
  void move() {
    xPos += xSpeed; 
  }

  // Display ship
  void display() {
    image(ship, xPos, yPos);
  }

  void controls() {
    if (keyPressed) {
      if (keyCode == LEFT) {
        xPos -= xSpeed;
      } else if (keyCode == RIGHT) {
        xPos += xSpeed;
      }
    }
  }
}

Ship ship;

void setup() {
  size(800, 600);
  ship = new Ship(0, 200, 5);
}

void draw() {
  background(52, 229, 235);
  ship.controls();
  ship.display();
}
