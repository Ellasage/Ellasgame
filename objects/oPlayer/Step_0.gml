//code that runs ever frame
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//what directon player is moving
xDirection = right - left;

//speed & directon player is moving at
xVector = xDirection * xSpeed;
yVector = yVector + grv;

//position and movemtn of player

//check to see if there is an oWall to the left or right of my oPlayer, if there is stop movement and if there isnt continue to move as normal
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
	//otherwise move as normal
y = y + yVector;

//if we are touching the ground and we press jump fly like an eagle
if (place_meeting(x, y + 1, oWall)) and (jump)
{
	yVector = jumpForce;
}

//die in a pit 
if (y >=  room_height)

{
playerDeath();
}

levelTimer -=1/room_speed;
if (levelTimer < 0)
{
room_restart();
}
