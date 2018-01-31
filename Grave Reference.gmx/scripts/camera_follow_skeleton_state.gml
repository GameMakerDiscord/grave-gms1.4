///camera_follow_skeleton_state()
if (instance_exists(o_skeleton)) {
    var targetx = o_skeleton.x+(o_skeleton.image_xscale*32); 
    var targety = o_skeleton.y;
    camera_move_to_target(targetx, targety, .2);
}

