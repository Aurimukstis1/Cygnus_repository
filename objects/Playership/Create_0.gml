friction = 0.2;
mass = 1;
landed = false;
imgloop = 0;
rspeed = 5;

#region GUNS

weapon_type = 1;
AmmoCapacity = 100000000000000; // (Rounds)

#endregion

#region UPGRADES

CRB = true; //Chemical rocket booster

Fuel = 1; //Liquid hydrogen UNUSED
Oxidizer = 1; //Liquid Oxygen UNUSED

FuelInletQuality = 3; //LOW, MED, HIGH
OxidizerInletQuality = 3; //LOW, MED, HIGH
FuelValveQuality = 3; //LOW, MED, HIGH
OxidizerValveQuality = 3; //LOW, MED, HIGH
GimbalBlockQuality = 3; //LOW, MED, HIGH
TurbopumpQuality = 3; //LOW, MED, HIGH
HeatExchangerQuality = 3; //LOW, MED, HIGH
ThrustChamberQuality = 3; //LOW, MED, HIGH
ThrustChamberExtension = 3;  //LOW, MED, HIGH

NozzleHeat = 10; //C

#endregion

#region Basic values

ThrustPower = 0;

MP = 2; //Monopropellant (Tonnes)
RF = 10; //Rocket fuel (Tonnes) 
LF = 80; //Oxidizer (Tonnes)
Power = 100; //Power (MW)

#endregion

position = new vector(x, y);
velocity = new vector_zero();
steering_force = new vector_zero();

ISP = (FuelInletQuality+OxidizerInletQuality+FuelValveQuality+OxidizerValveQuality+TurbopumpQuality+ThrustChamberQuality+ThrustChamberExtension+NozzleHeat)/8;
