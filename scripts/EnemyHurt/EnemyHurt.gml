//restart level for player death
function EnemyHurt()
{
	if (!other.isInvincible)
	{
		isInvincible = true;
		self.hp --;
		if (self.hp <1)
		{
			EnemyDeath();
		}
	}
}


function EnemyDeath()
{
	instance_destroy(self)
	if (random_range(0,10) > 4)
		{
			instance_create_layer(other.x, other.y, "Instances", oCoin);
		}
}


