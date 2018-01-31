///skeleton_move_state
var hdir = o_input.right - o_input.left;

// Quick turnaround
if (o_input.right || o_input.left) {
    if (abs(hspd) >= spd && hdir != image_xscale && hdir != 0) {
        hspd *= -1;
    }
}

// Add to the horizontal speed
hspd += hdir*spd;
hspd = clamp(hspd, -maxspd, maxspd);
friction = !(o_input.right || o_input.left);

// Control sprites and footstep sounds
if (hspd != 0) {
    image_xscale = sign(hspd);
    sprite_index = s_skeleton_run;
    image_speed = abs(hspd/maxspd*.3);
    if (animation_hit_frame(2) || animation_hit_frame(5)) {
        audio_play_sound(a_footstep, 7, false);
    }
} else {
    sprite_index = s_skeleton_idle;
    image_speed = .15;
}

// Update the xposition using the hspd
move();

// Attack
if (o_input.attack) {
    hspd = 0;
    state = skeleton_attack_one_state;
}

// Roll
if (o_input.roll) {
    state = skeleton_roll_state;
}

