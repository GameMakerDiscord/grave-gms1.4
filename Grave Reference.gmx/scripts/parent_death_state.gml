///parent_death_state(sprite);
var sprite = argument0;
sprite_index = sprite;
friction = true;

// Check for animation end?
if (image_index >= image_number - 1) {
    image_index = image_number-1;
    image_speed = 0;
    if (image_alpha > 0) {
        image_alpha -= .1;
    } else {
        instance_destroy();
    }
}

// Move just in case we have knockback
move();
