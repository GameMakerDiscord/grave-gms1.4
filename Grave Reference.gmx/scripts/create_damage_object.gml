///create_damage_object(x, y, sprite, image_xscale, creator, knockback, duration, damage);
var xx = argument0;
var yy = argument1;
var sprite = argument2;
var xscale = argument3;
var creator = argument4;
var knockback = argument5;
var duration = argument6;
var damage = argument7;

var damage_object = instance_create(xx, yy, o_damage);
damage_object.sprite_index = sprite;
damage_object.image_xscale = xscale;
damage_object.creator = creator;
damage_object.knockback = knockback;
damage_object.alarm[0] = duration;
damage_object.damage = damage;
