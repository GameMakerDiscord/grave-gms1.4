///skeleton_attack_three_state
set_state_sprite(s_skeleton_attack_three, .25);

// Do damage
if (animation_hit_frame(2)) {
    audio_play_sound(a_miss, 6, false);
    create_damage_object(x, y, s_skeleton_attack_three_damage, image_xscale, id, 5, 3/image_speed, o_skeleton_stats.strength div 3);
}

// End attack
if (animation_end()) {
    state = skeleton_move_state;
}
