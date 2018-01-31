///knight_chase_state
set_state_sprite(s_knight_attack, .3);

// Attack
if (animation_hit_frame(4)) {
    audio_play_sound(a_miss, 6, false);
    create_damage_object(x, y, s_skeleton_attack_one_damage, image_xscale, id, 12, 2/image_speed, 10);
}

// End attack state
if (animation_end()) {
    state = knight_chase_state;
}
