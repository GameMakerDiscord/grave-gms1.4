///skeleton_roll_state
friction = false;
set_state_sprite(s_skeleton_roll, .4);
hspd = image_xscale*maxspd*1.25;

// Move
move();

// End roll
if (animation_end()) {
    hspd = image_xscale*maxspd;
    state = skeleton_move_state;
}
