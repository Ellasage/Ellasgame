// code that runs when player is created
//how many pixels per frame we want the player to move
xSpeed = 4;

//what direction the player is facing (wherre 1 = rigth, -1 = left. 0 = front or not moving)
xDirection = 0;

//how fast and what direction player is moving
xVector = xSpeed * xDirection;

yVector = 0;

//gravity levels
grv = 0.3;
jumpForce = -10;

//coins and points
global.coins =0;
global.points =0;

//invincibility
isInvincible = false;

//health points
hp = 6;

//level timer
levelTimer = 100

//invincibility timer
invTimer = 2;

enterShip = false;
enteredShip = false;