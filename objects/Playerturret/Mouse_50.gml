if Playership.landed = false {
if Cooldown_0 = 0 {
var _xx = x + lengthdir_x(10, image_angle - 50);
var _yy = y + lengthdir_y(10, image_angle - 50);
var _xx1 = x + lengthdir_x(10, image_angle + 50);
var _yy1 = y + lengthdir_y(10, image_angle + 50);
if mouse_check_button(mb_left) {
if Playership.weapon_type = 1 {
if Playership.AmmoCapacity >= 2 {
	alarm_set(0,5);
	Cooldown_0 = 1;
}
	audio_play_sound(HeavyGunSound,1,false);
	Playership.AmmoCapacity -= 2;
	with instance_create_layer(_xx, _yy, "Instances_3", BM)
	{
		cal = 12;
		speed = speed+Playership.speed;
		image_angle = other.image_angle;
		direction = other.image_angle;
		enemy_ = false;	
	}
	with instance_create_layer(_xx1, _yy1, "Instances_3", BM)
	{
		cal = 12;
		speed = speed+Playership.speed;
		image_angle = other.image_angle;
		direction = other.image_angle;
		enemy_ = false;	
	}
   }
  }
 }
}

