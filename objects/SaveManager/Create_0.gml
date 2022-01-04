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
			weapon_type : _Ship.weapon_type,
			landed : _Ship.landed,
			EngineTier : _Ship.EngineTier,
		}
	}
	
	// Save to json
	var _json = json_stringify(_rootStruct);
	
	SaveString(_json, "CGNS_Slot_1");
}

Load_1 = function () {
	//if !file_exists("CGNS_Slot_1") { room_goto(Room1) } else {
	
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
		_Ship.weapon_type = _ShipData.weapon_type;
		_Ship.landed = _ShipData.landed;
		_Ship.EngineTier = _ShipData.EngineTier;
	}
}

Load_1();