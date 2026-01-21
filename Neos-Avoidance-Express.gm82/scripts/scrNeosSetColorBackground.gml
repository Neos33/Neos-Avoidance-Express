///scrNeosSetColorBackground(duration, color_top, color_bottom, [color_middle = merge_color(c1, c2, 0.5)]);

timer = 0;
duration = argument[0];


color_top_target    = argument[1];
color_bottom_target = argument[2];

if argument_count == 4
    color_middle_target = argument[3];
else
    color_middle_target = merge_color(argument[1], argument[2], 0.5);


status = "Apply";
