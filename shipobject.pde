class Ship {
 int xPos, yPos;
 int xSpeed;
 PImage ship;
 
 // Make ship constructor
 Ship(int x, int y, int speed) {
  xPos = x;
  yPos = y;
  xSpeed = speed;
 }
 
 // Move across x axis at xSpeed
 void move() {
  xPos += xSpeed; 
 }
 
 // Display ship
 void display() {
  ship = loadImage("Ship.png");
  image(ship, 0, 0);
 }
 
 //void controls() {
 // // Movement code with AD or WASD keybinds
 // // using keyPressed probably
 //}
}

Ship ship;

void setup() {
 size(800, 600);
 ship = new Ship(0, 200, 5);
}

void draw() {
 background(52, 229, 235);
 ship.display();
 ship.move();
}
