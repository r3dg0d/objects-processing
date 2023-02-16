class Ship {
  int xPos, yPos;
  int xSpeed, ySpeed;
  PImage shipImage;
  Boolean Left = false;
  Boolean Right = false;
  Boolean Up = false;
  Boolean Down = false;

  // Make ship constructor
  Ship(int x, int y, int xSpeed, int ySpeed) {
    xPos = x;
    yPos = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    shipImage = loadImage("Ship.png");
  }

  // Move across x and y axis at xSpeed and ySpeed
  void move() {
    xPos += xSpeed;
    yPos += ySpeed;
  }

  // Display ship
  void display() {
    image(shipImage, xPos, yPos);
  }

  void keyPressed() {
    if (key == 'a' || key == 'A') {
      ship.Left = true;
      xPos -= xSpeed;
    }
    if (key == 'd' || key == 'D') {
      ship.Right = true;
      xPos += xSpeed;
    }
    if (key == 's' || key == 'S') {
      ship.Down = true;
      yPos += ySpeed;
    }
    if (key == 'w' || key == 'W') {
      ship.Up = true;
      yPos -= ySpeed;
    }
  }

  void keyReleased() {
    if (key == 'a' || key == 'A') {
      ship.Left = false;
    }
    if (key == 'd' || key ==  'D') {
      ship.Right = false;
    }
    if (key == 's' || key == 'S') {
      ship.Down = false;
      
    }
    if (key == 'w' || key == 'W') {
      ship.Up = false;
    }
  }
}
//// Add controls for x and y positions
//void controls() {
//  if (keyPressed) {
//    if (keyCode == LEFT) {
//      xPos -= xSpeed;
//    } else if (keyCode == RIGHT) {
//      xPos += xSpeed;
//    } else if (keyCode == UP) {
//      yPos -= ySpeed;
//    } else if (keyCode == DOWN) {
//      yPos += ySpeed;
//    }
//  }
//}
