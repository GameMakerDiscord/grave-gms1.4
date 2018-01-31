///crow_chase_state()
if (place_meeting(x, y, o_skeleton) && o_skeleton.state != skeleton_roll_state && !attacked) {
    create_damage_object(x, y, sprite_index, image_xscale, id, knockback, 1, damage);
    attacked = true;
}
if (attacked) y-=2;
x += hspd;
