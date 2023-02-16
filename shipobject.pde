// Declare Ship class as ship
Ship ship;
//Tnt tnt;

void setup() {
  size(800, 600);
  // Make a new ship at xpos & ypos with xspeed and yspeed
  ship = new Ship(0, 200, 5, 5);
}

void draw() {
  background(52, 229, 235);
  ship.keyPressed();
  ship.keyReleased();
  ship.display();
}
