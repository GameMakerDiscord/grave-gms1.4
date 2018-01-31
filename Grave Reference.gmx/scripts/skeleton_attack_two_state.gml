///skeleton_attack_two_state
set_state_sprite(s_skeleton_attack_two, .25);

// Do damage
if (animation_hit_frame(1)) {
    audio_play_sound(a_miss, 6, false);
    create_damage_object(x, y, s_skeleton_attack_two_damage, image_xscale, id, 2, 4/image_speed, o_skeleton_stats.strength div 5);
}

// Combo
if (animation_hit_rounded_frames(3, 4) && o_input.attack) {
    state = skeleton_attack_three_state;
}

// End attack
if (animation_end()) {
    state = skeleton_move_state;
}
