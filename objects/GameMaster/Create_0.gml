//paused = false;
//paused_surf = -1;

blur = false;
draw_set_font(Boxy_Bold);

// OPTIONS //

//BrightnessSetting = 100;
//ScreenshakeSetting = 100;
//VFXSetting = 100;
//SFXSetting = 100;

//GameQualitySetting = 3;

// Maximum - 3
// Medium - 2
// Minimum - 1

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
	
// saving

Save = function () {
	// Relevant data
	var _SaveCount = instance_number(Playership);
	
	// Create root struct
	var _rootStruct = {
		_ShipCount : _SaveCount,
		Ships : array_create(_SaveCount)
	};
	
	// Fill data
	for (var i = 0; i < _SaveCount; i ++) {
		var _Ship = instance_find(Playership, i);
		
		_rootStruct.Ships[i] = {
			x : _Ship.x,
			y : _Ship.y,
			health_ : _Ship.health_,
			image_angle : _Ship.image_angle,
			AmmoCapacity : _Ship.AmmoCapacity,
			tutorial : _Ship.tutorial,
			weapon_type : _Ship.weapon_type,
			landed : _Ship.landed,
			EngineTier : _Ship.EngineTier,
			//paused_surf : _Ship.paused_surf,
			//paused : _Ship.paused
		}
	}
	
	// Save to json
	var _json = json_stringify(_rootStruct);
	
	SaveString(_json, "CGNS_Slot_1");
}

Load_1 = function () {
	if (!file_exists("CGNS_Slot_1")) return;
	
	// Load JSON
	var _json = LoadString("CGNS_Slot_1");
	var _rootStruct = json_parse(_json);
	
	// Recreate Ships
	instance_destroy(Playership);
	
	var _SaveCount = _rootStruct._ShipCount;
	var _Ships = _rootStruct.Ships;
	
	for (var i = 0; i < _SaveCount; i ++) {
		var _ShipData = _Ships[i];
		
		// Create new
		var _Ship = instance_create_layer(_ShipData.x, _ShipData.y, "Instances_3", Playership);
		_Ship.health_ = _ShipData.health_;
		_Ship.image_angle = _ShipData.image_angle;
		_Ship.AmmoCapacity = _ShipData.AmmoCapacity;
		_Ship.tutorial = _ShipData.tutorial;
		_Ship.weapon_type = _ShipData.weapon_type;
		_Ship.landed = _ShipData.landed;
		_Ship.EngineTier = _ShipData.EngineTier;
		//_Ship.paused_surf = _ShipData.paused_surf;
		//_Ship.paused = _ShipData.paused;
	}
}

if global.LoadFile_1 = true {
	if file_exists("CGNS_Slot_1") {
		Load_1();
	}
	else {
	if !file_exists("CGNS_Slot_1") {
			room_goto(Room1);
		}
	}
}