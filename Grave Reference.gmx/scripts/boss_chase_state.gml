///boss_chase_state
friction = true;
sprite_index = s_boss_walk;
image_speed = .2;
if (instance_exists(o_skeleton)) {
    image_xscale = sign(o_skeleton.x - x);
    var dis = point_distance(x, y, o_skeleton.x, o_skeleton.y) + o_skeleton.hspd;
} else {
    dis = 1000;
}

if (dis > 160) {
    if (abs(hspd) < maxspd) {
        hspd += spd*image_xscale;
    }
    friction = false;
} else if (dis <= 160 && dis > 64 && alarm[2] <= 0){
    hspd = 0;
    image_index = 0;
    state = boss_attack_state;
} else if (dis <= 64) {
    hspd -= spd*image_xscale;
    image_speed = -.2;
}
move();
