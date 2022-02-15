shotTimer -= 1/room_speed

if (shotTimer < 0)
{
	shotTimer = 3
	var bullet = instance_create_layer(x, y, "Instances", oProjectlie)
	with (bullet)
	{
		speed = 6;
		direction = point_direction(x, y, other.x, other.y)
	}
}
