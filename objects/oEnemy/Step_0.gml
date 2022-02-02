if(isInvincible)
{
	invTimer -=1/room_speed
	If (invTimer <0)
	invTimer = 0.5;
	isInvincible = false

}

