//movement
xDirection = right - left;

//speed & directon player is moving at
xVector = xDirection * xSpeed;

xSpeed = 4;

//what direction the player is facing (wherre 1 = rigth, -1 = left. 0 = front or not moving)
xDirection = 0;

//how fast and what direction player is moving
xVector = xSpeed * xDirection;


right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);

yDirection = up - down
yVector = grv * yDirection
xDirection = right - left
xVector = xSpeed * xDirection

if (place_meeting(x +xVector, y , oWall))
	{
		//check 1 pixel in the desired xDirectoin until we hit a wall 
		// ! means "not" 
		while(!place_meeting(x +xVector, y, oWall))
		{
			//move 1 pixel in the direction your player is moving
			x = x + xDirection;
		}
			//otherwise if you are coming in contact with the wall ad should stop
			xVector = 0;
	}
//otherwise move as normal
x = x + xVector;
	
	
if isInvincible
{
	invTimer -= 1/room_speed
	if invTimer <=0
	{
		isInvincible = false;
		invTimer = 2;
	}
}
if (place_meeting(x, y + yVector, oWall))
	{
		//check 1 pixel in the desired yDirectoin until we hit a wall 
		// ! means "not" 
		// sign means "return the positive or negative sign of a value" 
		// if yVector = -10, sign(yVector)= -1, but if yVector = +10, sign(yVectory) = +1
		while(!place_meeting(x, y + sign(yVector), oWall))
		{
			//move 1 pixel in the vertical direciton your player is moving
			y = y + sign(yVector);
		}
		yVector = 0;
	}
y = y + yVector + grv;
