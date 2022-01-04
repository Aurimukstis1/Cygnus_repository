//if file_exists("CGNS_Slot_1") = true {
//// go into room
//room_goto(Room1);

//	// Load JSON
//	var _json = LoadString("CGNS_Slot_1");
//	var _rootStruct = json_parse(_json);
	
//	// Recreate Ships
//	instance_destroy(Playership);
	
//	var _SaveCount = _rootStruct._ShipCount;
//	var _Ships = _rootStruct.Ships;
	
//	for (var i = 0; i < _SaveCount; i ++) {
//		var _ShipData = _Ships[i];
		
//		// Create new
//		var _Ship = instance_create_layer(_ShipData.x, _ShipData.y, "Instances_3", Playership);
//		_Ship.health_ = _ShipData.health_;
//		_Ship.image_angle = _ShipData.image_angle;
//		_Ship.AmmoCapacity = _ShipData.AmmoCapacity;
//		_Ship.tutorial = _ShipData.tutorial;
//		_Ship.weapon_type = _ShipData.weapon_type;
//		_Ship.landed = _ShipData.landed;
//		_Ship.EngineTier = _ShipData.EngineTier;
//	}
//} else if file_exists("CGNS_Slot_1") = false {
	
//// go into room
//room_goto(Room1);
	
//// instead of using a save file, use a default save file

//	// Load JSON
//	var _json = LoadString("CGNS_Slot_1_Default");
//	var _rootStruct = json_parse(_json);
	
//	// Recreate Ships
//	instance_destroy(Playership);
	
//	var _SaveCount = _rootStruct._ShipCount;
//	var _Ships = _rootStruct.Ships;
	
//	for (var i = 0; i < _SaveCount; i ++) {
//		var _ShipData = _Ships[i];
		
//		// Create new
//		var _Ship = instance_create_layer(_ShipData.x, _ShipData.y, "Instances_3", Playership);
//		_Ship.health_ = _ShipData.health_;
//		_Ship.image_angle = _ShipData.image_angle;
//		_Ship.AmmoCapacity = _ShipData.AmmoCapacity;
//		_Ship.tutorial = _ShipData.tutorial;
//		_Ship.weapon_type = _ShipData.weapon_type;
//		_Ship.landed = _ShipData.landed;
//		_Ship.EngineTier = _ShipData.EngineTier;
//	}
//}

//// delete loader
//instance_destroy();

//////file = file_text_open_read("texture.json") ; json = file_text_read_string(file) ;

audio_play_sound(MenuSelectSnd,1,false);
room_goto(Room1);
instance_destroy();