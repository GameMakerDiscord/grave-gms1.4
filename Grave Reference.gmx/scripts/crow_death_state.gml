///crow_death_state()
/// Destroy the crow
part_particles_create(o_game.ps, x+random_range(-12, 12), y+random_range(-12, 12), o_game.pt_feather, 10);
instance_destroy();
var chance = 30;
if (irandom(chance) == chance) {
    audio_play_sound(a_crow_pop, 8, false);
    part_particles_create(o_game.ps, x+random_range(-12, 12), y+random_range(-12, 12), o_game.pt_confetti, 30);
}

