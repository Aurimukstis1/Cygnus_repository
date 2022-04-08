if instance_exists(target) {
dir = point_direction(x, y, target.x, target.y);
image_angle += sin(degtorad(dir - image_angle)) * rspeed;
}

if instance_exists(pFaction2) {
	target = instance_nearest(x,y,pFaction2);
}

if instance_exists(target) {
	fire = true;
} else { fire = false }

var _xx = x + lengthdir_x(16, image_angle);
var _yy = y + lengthdir_y(16, image_angle);
if fire = true {
if Cooldown_0 = 0 {
	audio_play_sound(BGLZRShootingSnd2,1,false);
	alarm_set(0,20);
	Cooldown_0 = 1;
	with instance_create_layer(_xx, _yy, "Instances_3", BM_20mm)
	{
		speed = 50;
		image_angle = other.image_angle;
		direction = other.image_angle;
		enemy_ = false;
  }
 }
}
