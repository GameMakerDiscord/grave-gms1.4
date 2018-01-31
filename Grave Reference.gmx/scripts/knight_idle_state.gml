///knight_chase_state
friction = true;
sprite_index = s_knight_idle;
image_speed = .1;
move();
if (instance_exists(o_skeleton)) {
    image_xscale = sign(o_skeleton.x - x);
    var dis = point_distance(x, y, o_skeleton.x, o_skeleton.y);
} else {
    var dis = 100;
}
if (dis <= 150) {
    instance_create(x+(64*-image_xscale), y, o_crow);
    state = knight_chase_state;
}
