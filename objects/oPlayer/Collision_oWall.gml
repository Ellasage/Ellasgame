//colliding with enemy
//check to see if there is a collison between oPlayer & the top of oEnemy
if (y<=other.y - other.sprite_height*0.9)

	{
//bounce in the air a bit
		yVector = jumpForce;
		instance_destroy(other)
}
//otherwise restart level
else

	{
	X = x - xVector*20;
	PlayerHurt();

	}
