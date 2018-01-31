///animation_hit_rounded_frames(frames...)
var hit = false;
for (var index=0; index<argument_count; index++) {
    hit = hit || round(image_index) == argument[index];
}
return hit;
