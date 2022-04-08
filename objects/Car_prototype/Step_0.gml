var _direction = image_angle; //point_direction(x, y, image_angle, mouse_y);
var _acceleration = .5;
var _top_speed = 10;
var _turn_rate = 2;

depth = -y;

if keyboard_check(ord("W")) {
	friction = 0;
	if speed < _top_speed {
		speed += _acceleration;
	}
	direction = _direction;
	speed = min(speed, _top_speed);
} else {
	friction = _acceleration/2;
}

if speed > 0 {
	var _turn_amount = 1 * _turn_rate;
	if keyboard_check(ord("D")) {
		image_angle -= _turn_amount
	}
	if keyboard_check(ord("A")) {
		image_angle += _turn_amount
	}
	
	//var _dust_x = x + lengthdir_x(6, image_angle+180);
	//var _dust_y = y + lengthdir_y(6, image_angle+180);
	//instance_create_layer(_dust_x+random_range(-4, 4), _dust_y+random_range(-4, 4), "Instances_3", fragment);
}