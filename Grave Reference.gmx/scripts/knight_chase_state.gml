///knight_chase_state
friction = true;
set_state_sprite(s_knight_walk, .2);

// Get the distance to the player
if (instance_exists(o_skeleton)) {
    image_xscale = sign(o_skeleton.x - x);
    var dis = point_distance(x, y, o_skeleton.x, o_skeleton.y) - abs(o_skeleton.hspd*2);
} else {
    dis = 100;
}

// Check the distance to the player
if (dis > 42) {
    if (abs(hspd) < maxspd) {
        hspd += spd*image_xscale;
    }
    friction = false;
} else {
    hspd = 0;
    state = knight_attack_state;
}

// Move the Knight
move();
