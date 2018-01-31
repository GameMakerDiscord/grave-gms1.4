///enemy_chase_state
sprite_index = s_boss_attack;
image_speed = .3;

/// Attack
if (animation_hit_frame(7)) {
    audio_play_sound(a_big_hit, 6, false);
    audio_play_sound(a_medium_hit, 6, false);
    create_damage_object(x, y, s_boss_attack_damage, image_xscale, id, 20, 2/image_speed, 20);
}

// End state
if (animation_end()) {
    state = boss_chase_state;
    alarm[STALL_TIME] = room_speed;
}
