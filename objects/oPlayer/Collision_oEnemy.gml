//check to see if there is a collison between oPlayer & the top of oEnemy
if (y<=other.y - other.sprite_height*0.9)
	{
//bounce in the air a bit
		yVector = 0.5*jumpForce;
		EnemyHurt();
}
//otherwise restart level
else
	{
		PlayerHurt();
	}
