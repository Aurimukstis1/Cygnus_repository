x = instance_nearest(x,y,MediumArtillery_Base).x;
y = instance_nearest(x,y,MediumArtillery_Base).y;

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

var _xx = x + lengthdir_x(272, image_angle + direction);
var _yy = y + lengthdir_y(272, image_angle + direction);
if fire = true {
if Cooldown_0 = 0 {
	audio_play_sound(BGLZRShootingSnd2,1,false);
	alarm_set(0,150);
	Cooldown_0 = 10;
	with instance_create_layer(_xx, _yy, "Instances_3", BM_150mm)
	{
		speed = 50;
		image_angle = other.image_angle;
		direction = other.image_angle;
		enemy_ = false;
  }
 }
}
