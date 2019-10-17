%%  connect to colorSensor and use ambient light

brick.SetColorMode(4, 1); % set port 4 to ambient

ambient = brick.LightAmbient(4); % assign variable

disp(ambient);