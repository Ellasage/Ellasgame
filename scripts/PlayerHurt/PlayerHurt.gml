//restart level for player death
function PlayerHurt()
{
	if (!oPlayer.isInvincible)
	{
		isInvincible = true;
		alarm_set(0,2*room_speed);
		oPlayer.hp --;
		if (oPlayer.hp <1)
		{
			playerDeath()
		}
	}
}


function playerDeath()
{
	room_restart();
	oHUD.levelTimer = 100;
}


