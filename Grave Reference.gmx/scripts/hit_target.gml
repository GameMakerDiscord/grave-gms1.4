///hit_target(target, target_stats_object, sound, camera_shake)
var target = argument0;
var target_stats_object = argument1;
var sound = argument2;
var camera_shake = argument3;

// Deal damage and knockback
target_stats_object.hp -= damage;
target_stats_object.hp = clamp(target_stats_object.hp, 0, target_stats_object.maxhp);
target.hspd = sign(target.x-x)*knockback;
target.friction = true;
ds_list_add(hit_objects, target.id);

// Effects
audio_play_sound(sound, 8, false);
o_camera.shake = camera_shake;
o_camera.alarm[SHAKE_TIME] = camera_shake;
var flash = instance_create(0, 0, o_flash);
flash.image_alpha = .25;

