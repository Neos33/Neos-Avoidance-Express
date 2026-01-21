///scrNeosDrawNineSlice(background, x1, y1, x2, y2);

// Arguments
var _background, _x1, _y1, _x2, _y2, _color, _alpha;
_background = argument[0];
_x1 = argument[1];
_y1 = argument[2];
_x2 = argument[3];
_y2 = argument[4];
//_color = argument[5];
//_alpha = argument[6];
_color = draw_get_color();
_alpha = draw_get_alpha();

var _size, _chunk;
_size = background_get_width(_background);
_chunk = _size / 3;

// Corners
var _end_chunk;
_end_chunk = _chunk * 2;
draw_background_part_ext(_background,          0,          0, _chunk, _chunk,          _x1,          _y1, 1, 1, _color, _alpha); // Top left
draw_background_part_ext(_background,          0, _end_chunk, _chunk, _chunk,          _x1, _y2 - _chunk, 1, 1, _color, _alpha); // Bottom left
draw_background_part_ext(_background, _end_chunk,          0, _chunk, _chunk, _x2 - _chunk,          _y1, 1, 1, _color, _alpha); // Top right
draw_background_part_ext(_background, _end_chunk, _end_chunk, _chunk, _chunk, _x2 - _chunk, _y2 - _chunk, 1, 1, _color, _alpha); // Bottom right


// Sides
var _xscale, _yscale;
_xscale = _x2 - _x1 - _end_chunk;
_yscale = _y2 - _y1 - _end_chunk;
draw_background_part_ext(_background,     _chunk,          0,      1, _chunk, _x1 + _chunk,          _y1, _xscale,       1, _color, _alpha); // Top
draw_background_part_ext(_background,          0,     _chunk, _chunk,      1,          _x1, _y1 + _chunk,       1, _yscale, _color, _alpha); // Left
draw_background_part_ext(_background, _end_chunk,     _chunk, _chunk,      1, _x2 - _chunk, _y1 + _chunk,       1, _yscale, _color, _alpha); // Right
draw_background_part_ext(_background,     _chunk, _end_chunk,      1, _chunk, _x1 + _chunk, _y2 - _chunk, _xscale,       1, _color, _alpha); // Bottom
