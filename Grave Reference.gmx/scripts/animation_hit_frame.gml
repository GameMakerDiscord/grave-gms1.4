///animation_hit_frame(frame)
var frame = argument0; // The frame to check for
return (image_index >= frame+1 - image_speed) && (image_index < frame+1);
