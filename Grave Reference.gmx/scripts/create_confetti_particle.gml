///create_confetti_particle
pt_confetti = part_type_create();

part_type_size(pt_confetti, .5, 1, -.025, .005);
part_type_orientation(pt_confetti, 0, 0, 0, 0, true);
part_type_life(pt_confetti, 16, 20);
part_type_colour1(pt_confetti, c_white);
part_type_direction(pt_confetti, 45, 135, 0, .5);
part_type_sprite(pt_confetti, s_confetti, false, false, true);
part_type_speed(pt_confetti, 1, 10, 0, .5);
part_type_gravity(pt_confetti, .5, 270);
