///create_spark_particle
pt_spark = part_type_create();

part_type_size(pt_spark, .1, .3, -.025, .005);
part_type_blend(pt_spark, true);
part_type_orientation(pt_spark, 0, 0, 0, 0, true);
part_type_life(pt_spark, 4, 8);
part_type_colour1(pt_spark, c_white);
part_type_direction(pt_spark, 0, 360, 0, .5);
part_type_shape(pt_spark, pt_shape_line);
part_type_speed(pt_spark, 5, 20, -.5, .5);
