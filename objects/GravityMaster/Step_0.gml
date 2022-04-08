n = undefined;
bodies = undefined;

var _a, _b, _x, _y, _f, _f1, _f2;
for( var i = 0; i < (n-1); i += 1 ) {
    _a = bodies[|i];
    for ( var j = i + 1; j < n; j += 1 ) {
        _b = bodies[|j];
        _x = _a.x - _b.x;
        _y = _a.y - _b.y;
        _f = 1 / power(_x*_x+_y*_y,1.5);
        _f1 = _a.mass * _f;
        _f2 = _b.mass * _f;
        _b.phy_speed_x += _x * _f1;
        _b.phy_speed_y += _y * _f1;
        _a.phy_speed_x -= _x * _f2;
        _a.phy_speed_y -= _y * _f2;
    }
}