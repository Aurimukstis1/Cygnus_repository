health_ = 100;
weapon_type = 1;
landed = false;
imgloop = 0;

//ENGINE

EngineTier = 5;
rspeed = 1 * EngineTier * 1.5;
direction = image_angle();
friction = 0.1;

//GUNS

AmmoCapacity = 100000000000000;
position = new vector(x, y);
velocity = new vector_zero();
steering_force = new vector_zero();

#region UPGRADES

CRB = true; //Chemical rocket booster
LSE = true; //Light Speed Engine
Shield = false; //Shield

#endregion

#region Basic values

RF = 1; //Rocket fuel
LSEF = 1; //Light Speed Engine Fuel
Power = 100;

#endregion