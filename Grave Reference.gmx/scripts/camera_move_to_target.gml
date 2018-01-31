///camera_move_to_target(x, y, spd)
var xx = argument[0];
var yy = argument[1];
var spd = argument[2];

x = lerp(x, xx, spd)+random_range(-shake, shake);
y = lerp(y, yy, spd)+random_range(-shake, shake);
