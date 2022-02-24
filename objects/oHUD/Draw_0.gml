//display current coin count and points 
draw_text(132,132, "coins:" +string(global.coins))
draw_text(132,164, "points: " +string(global.points))
draw_text(132,228, "HP: " +string(oPlayer.hp))
draw_text(132,260, "Time Left:" +string(floor(oPlayer.levelTimer)));


