///scrNeosNewRange(value, from1, to1, from2, to2)

var value, from1, to1, from2, to2;

// Arguments
value = argument[0];
from1 = argument[1];
to1 = argument[2];
from2 = argument[3];
to2 = argument[4];

return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
