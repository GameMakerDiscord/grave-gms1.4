///parent_knockback_state(next_state)
friction = true;

// Move
move();

// Change states
if (hspd == 0) {
    state = argument[0];
}

// Create dus particles
part_particles_create(o_game.ps, x+random_range(-16, 16), y+sprite_height-sprite_yoffset-2, o_game.pt_dust, abs(hspd/2));
