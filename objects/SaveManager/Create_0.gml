Save = function () {
	
var _rootstruct = {
	ship_x : Playership.x,
	ship_y : Playership.y,
	ship_image_angle : Playership.image_angle,
	version : global.version,
}

var _bullets = array_create(instance_number(BM));
var i = 0;
with (BM) {
    _bullets[i++] = {
        bullet_x : x,
        bullet_y : y,
		bullet_direction : direction,
		bullet_speed : speed,
		bullet_image_angle : image_angle,
		enemy_status : enemy_,
    }
}

_rootstruct.bulletcount = instance_number(BM);
_rootstruct.bullets = _bullets;

var _json = json_stringify(_rootstruct);
SaveString(_json, "SAVEDATA.CYGNUS"); }

////

Load = function () {
	var _json = LoadString("SAVEDATA.CYGNUS");
	var _rootstruct = json_parse(_json);
	var _Ship = _rootstruct;
	
		instance_destroy(Playership); 
		var _Ship = instance_create_layer(x, y, "Instances_3", Playership);
		_Ship.image_angle = _rootstruct.ship_image_angle;
		_Ship.x = _rootstruct.ship_x;
		_Ship.y = _rootstruct.ship_y;

	instance_destroy(BM);
	
	for (var i = 0; i < _rootstruct.bulletcount; i ++) {
	var _bulletdata = _rootstruct.bullets[i];
		
	var _bullets = instance_create_layer(_bulletdata.bullet_x,_bulletdata.bullet_y,"Instances_3",BM_100mm);
	_bullets.direction = _bulletdata.bullet_direction;
	_bullets.speed = _bulletdata.bullet_speed;
	_bullets.image_angle = _bulletdata.bullet_image_angle;
	_bullets.enemy_ = _bulletdata.enemy_status;
	}
}

