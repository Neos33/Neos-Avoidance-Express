///scrNeosOutsideRoom(offset)
// workaround for instances without a sprite
// Script by renex

var _offset;
_offset = argument[0];

if (bbox_right-bbox_left+bbox_bottom-bbox_top==0)
return x>=room_width
    || x<0
    || y>=room_height
    || y<0

return bbox_left>=room_width + _offset
    || bbox_right<0 - _offset
    || bbox_top>=room_height + _offset
    || bbox_bottom<0 - _offset
