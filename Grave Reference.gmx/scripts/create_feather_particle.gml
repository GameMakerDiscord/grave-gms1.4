///create_spark_particle
pt_feather = part_type_create();

part_type_size(pt_feather, 1, 1.25, 0, 0);
part_type_orientation(pt_feather, 45+45, 45+135, 0, 15, false);
part_type_life(pt_feather, 20, 30);
part_type_colour1(pt_feather, c_white);
part_type_direction(pt_feather, 0, 360, 0, .5);
part_type_sprite(pt_feather, s_feather, false, false, false);
part_type_speed(pt_feather, .5, 3, -.05, 0);
part_type_gravity(pt_feather, .2, 270);
