global.points = 0;
global.coins =0;
levelTimer -=1/room_speed;
if (levelTimer < 0)
{
room_restart();
}

