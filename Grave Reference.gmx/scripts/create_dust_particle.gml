///create_spark_particle
pt_dust = part_type_create();

part_type_size(pt_dust, .1, .2, 0, 0);
part_type_life(pt_dust, 10, 8);
part_type_colour1(pt_dust, make_colour_rgb(32,32,32));
part_type_direction(pt_dust, 0, 180, 0, .5);
part_type_shape(pt_dust, pt_shape_explosion);
part_type_speed(pt_dust, .5, 1, -.5, .5);
