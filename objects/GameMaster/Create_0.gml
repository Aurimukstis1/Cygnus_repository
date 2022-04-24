#region Particle
global.P_System= part_system_create_layer(layer, true);
global.Particle_explosionburstsmall1 = part_type_create();
part_type_sprite(global.Particle_explosionburstsmall1, ExplosionBurstSmall1, 1, 0, 0)
part_type_size(global.Particle_explosionburstsmall1, 1, 1, 0, 0);
part_type_color3(global.Particle_explosionburstsmall1, c_white, c_white, c_white);
part_type_alpha3(global.Particle_explosionburstsmall1, 1, 1, 1);
part_type_speed(global.Particle_explosionburstsmall1, 0, 0, 0, 0);
part_type_direction(global.Particle_explosionburstsmall1, 0, 359, 0, 0);
part_type_blend(global.Particle_explosionburstsmall1, true);
part_type_life(global.Particle_explosionburstsmall1, 30, 30);

global.Particle_explosionburstsmall2 = part_type_create();
part_type_sprite(global.Particle_explosionburstsmall2, ExplosionBurstSmall2, 1, 0, 0)
part_type_size(global.Particle_explosionburstsmall2, 1, 1, 0, 0);
part_type_color3(global.Particle_explosionburstsmall2, c_white, c_white, c_white);
part_type_alpha3(global.Particle_explosionburstsmall2, 1, 1, 1);
part_type_speed(global.Particle_explosionburstsmall2, 0, 0, 0, 0);
part_type_direction(global.Particle_explosionburstsmall2, 0, 359, 0, 0);
part_type_blend(global.Particle_explosionburstsmall2, true);
part_type_life(global.Particle_explosionburstsmall2, 30, 30);

global.Particle_explosionburstsmall3 = part_type_create();
part_type_sprite(global.Particle_explosionburstsmall3, ExplosionBurstSmall3, 1, 0, 0)
part_type_size(global.Particle_explosionburstsmall3, 1, 1, 0, 0);
part_type_color3(global.Particle_explosionburstsmall3, c_white, c_white, c_white);
part_type_alpha3(global.Particle_explosionburstsmall3, 1, 1, 1);
part_type_speed(global.Particle_explosionburstsmall3, 0, 0, 0, 0);
part_type_direction(global.Particle_explosionburstsmall3, 0, 359, 0, 0);
part_type_blend(global.Particle_explosionburstsmall3, true);
part_type_life(global.Particle_explosionburstsmall3, 30, 30);

global.Particle_SmokeBurstMedium1 = part_type_create();
part_type_sprite(global.Particle_SmokeBurstMedium1, SmokeBurstMedium1, 1, 0, 0)
part_type_size(global.Particle_SmokeBurstMedium1, 1, 1, 0, 0);
part_type_color3(global.Particle_SmokeBurstMedium1, c_white, c_white, c_white);
part_type_alpha3(global.Particle_SmokeBurstMedium1, 1, 1, 1);
part_type_speed(global.Particle_SmokeBurstMedium1, 0, 0, 0, 0);
part_type_direction(global.Particle_SmokeBurstMedium1, 0, 359, 0, 0);
part_type_blend(global.Particle_SmokeBurstMedium1, true);
part_type_life(global.Particle_SmokeBurstMedium1, 30, 30);

global.Particle_SmokeBurstSmall1 = part_type_create();
part_type_sprite(global.Particle_SmokeBurstSmall1, SmokeBurstSmall1, 1, 0, 0)
part_type_size(global.Particle_SmokeBurstSmall1, 1, 1, 0, 0);
part_type_color3(global.Particle_SmokeBurstSmall1, c_white, c_white, c_white);
part_type_alpha3(global.Particle_SmokeBurstSmall1, 1, 1, 1);
part_type_speed(global.Particle_SmokeBurstSmall1, 0, 0, 0, 0);
part_type_direction(global.Particle_SmokeBurstSmall1, 0, 359, 0, 0);
part_type_blend(global.Particle_SmokeBurstSmall1, true);
part_type_life(global.Particle_SmokeBurstSmall1, 30, 30);

global.Particle_SmokeBurstSmall2 = part_type_create();
part_type_sprite(global.Particle_SmokeBurstSmall2, SmokeBurstSmall2, 1, 0, 0)
part_type_size(global.Particle_SmokeBurstSmall2, 1, 1, 0, 0);
part_type_color3(global.Particle_SmokeBurstSmall2, c_white, c_white, c_white);
part_type_alpha3(global.Particle_SmokeBurstSmall2, 1, 1, 1);
part_type_speed(global.Particle_SmokeBurstSmall2, 0, 359, 0, 0);
part_type_direction(global.Particle_SmokeBurstSmall2, 0, 0, 0, 0);
part_type_blend(global.Particle_SmokeBurstSmall2, true);
part_type_life(global.Particle_SmokeBurstSmall2, 30, 30);

global.Particle_SmokeBurstSmall3 = part_type_create();
part_type_sprite(global.Particle_SmokeBurstSmall3, SmokeBurstSmall3, 1, 0, 0)
part_type_size(global.Particle_SmokeBurstSmall3, 1, 1, 0, 0);
part_type_color3(global.Particle_SmokeBurstSmall3, c_white, c_white, c_white);
part_type_alpha3(global.Particle_SmokeBurstSmall3, 1, 1, 1);
part_type_speed(global.Particle_SmokeBurstSmall3, 0, 0, 0, 0);
part_type_direction(global.Particle_SmokeBurstSmall3, 0, 359, 0, 0);
part_type_blend(global.Particle_SmokeBurstSmall3, true);
part_type_life(global.Particle_SmokeBurstSmall3, 30, 30);

global.Particle_SmokeBurstSmall4 = part_type_create();
part_type_sprite(global.Particle_SmokeBurstSmall4, SmokeBurstSmall4, 1, 0, 0)
part_type_size(global.Particle_SmokeBurstSmall4, 1, 1, 0, 0);
part_type_color3(global.Particle_SmokeBurstSmall4, c_white, c_white, c_white);
part_type_alpha3(global.Particle_SmokeBurstSmall4, 1, 1, 1);
part_type_speed(global.Particle_SmokeBurstSmall4, 0, 0, 0, 0);
part_type_direction(global.Particle_SmokeBurstSmall4, 0, 359, 0, 0);
part_type_blend(global.Particle_SmokeBurstSmall4, true);
part_type_life(global.Particle_SmokeBurstSmall4, 30, 30);
#endregion 

blur = false;
draw_set_font(Boxy_Bold);

// OPTIONS //

global.BrightnessSetting = 100;
global.ScreenshakeSetting = 100;
global.VFXSetting = 100;
global.SFXSetting = 100;

global.GameQualitySetting = 3;

//Maximum - 3
//Medium - 2
//Minimum - 1

var _inst = instance_create_layer(x,y,layer,Dialogue);
with(_inst)
	{
    text[0] = "0a";
    text[1] = "1b";
    text[2] = "2c";
    text[3] = "3d";
    text_last = 3;
    text_width = 150;
    text_x = x;
    text_y = y;
    text[text_current] = string_wrap(text[text_current], text_width);
}

////

global.version = "0.0.7";

Save = function () {
	
var _rootstruct = {
	version : global.version,
}
	
var _ship = {
	ship_x : Playership.x,
	ship_y : Playership.y,
	ship_image_angle : Playership.image_angle,
}

var _bullets = array_create(instance_number(BM));
var i = 0;
with (BM) {
    _bullets[i++] = {
        xx : x,
        yy : y,
		dir : direction,
		spd : speed,
		img : image_angle,
		enemy_status : enemy_,
		cal : cal,
    }
}

if instance_exists(enemy1) {
var _enemies = array_create(instance_number(enemy1));
var i = 0;
with (enemy1) {
    _enemies[i++] = {
        xx : x,
        yy : y,
		dir : direction,
		spd : speed,
		img : image_angle,
    }
  }
}

_rootstruct.bulletcount = instance_number(BM);
_rootstruct.bullets = _bullets;
_rootstruct.ship = _ship;
_rootstruct.enemycount = instance_number(enemy1);
_rootstruct.enemies = _enemies;

var _json = json_stringify(_rootstruct);
SaveString(_json, "SAVEDATA.CYGNUS"); }

////

Backup = function () {
	
var _rootstruct = {
	version : global.version,
}
	
var _ship = {
	ship_x : Playership.x,
	ship_y : Playership.y,
	ship_image_angle : Playership.image_angle,
}

var _bullets = array_create(instance_number(BM));
var i = 0;
with (BM) {
    _bullets[i++] = {
        xx : x,
        yy : y,
		dir : direction,
		spd : speed,
		img : image_angle,
		enemy_status : enemy_,
		cal : cal,
    }
}

var _enemies = array_create(instance_number(enemy1));
var i = 0;
with (enemy1) {
    _enemies[i++] = {
        xx : x,
        yy : y,
		dir : direction,
		spd : speed,
		img : image_angle,
    }
}

_rootstruct.bulletcount = instance_number(BM);
_rootstruct.bullets = _bullets;
_rootstruct.ship = _ship;
_rootstruct.enemycount = instance_number(enemy1);
_rootstruct.enemies = _enemies;

var _json = json_stringify(_rootstruct);
SaveString(_json, "SAVEDATA_BACKUP.CYGNUS"); 	
}

////

Load = function () {
	var _json = LoadString("SAVEDATA.CYGNUS");
	var _rootstruct = json_parse(_json);
	var _Ship = _rootstruct;
	
	var _versionget = _rootstruct.version;
	if _versionget < global.version {
		show_message("Warning: Savefile version different from game version!\nCreating backup just incase! " + environment_get_variable("APPDATA"));
		Backup();
	}
	if _versionget > global.version {
		show_message("Warning: Savefile version different from game version!\nCreating backup just incase! " + environment_get_variable("APPDATA"));
		Backup();
	}
	
		instance_destroy(Playership); 
		var _shipdata = _rootstruct.ship;
		var _Ship = instance_create_layer(_shipdata.ship_x, _shipdata.ship_y, "Instances_3", Playership);
		_Ship.image_angle = _shipdata.ship_image_angle;

	instance_destroy(BM);
	for (var i = 0; i < _rootstruct.bulletcount; i ++) {
	var _bulletdata = _rootstruct.bullets[i];
		
	var _bullets = instance_create_layer(_bulletdata.xx,_bulletdata.yy,"Instances_3",BM);
	_bullets.direction = _bulletdata.dir;
	_bullets.speed = _bulletdata.spd;
	_bullets.image_angle = _bulletdata.img;
	_bullets.enemy_ = _bulletdata.enemy_status;
	_bullets.cal = _bulletdata.cal;
	
	instance_destroy(enemy1);
	for (var i = 0; i < _rootstruct.enemycount; i ++) {
	var _enemydata = _rootstruct.enemies[i];
		
	var _enemies = instance_create_layer(_enemydata.xx,_enemydata.yy,"Instances_3",enemy1);
	_enemies.direction = _enemydata.dir;
	_enemies.speed = _enemydata.spd;
	_enemies.image_angle = _enemydata.img;
		}
	}
}