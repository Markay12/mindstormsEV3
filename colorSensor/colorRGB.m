%% Set color sensor to color_rgb

brick.SetColorMode(4, 4);

color_rgb = brick.ColorRGB(4); % gathers the color

fprintf("\t Red: %d\n", color_rgb(1));
fprintf("\t Green: %d\n", color_rgb(2));
fprintf("\t Blue: %d\n", color_rgb(3));