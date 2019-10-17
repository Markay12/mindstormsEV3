%% command to set the color mode and connect to reflect


brick.SetColorMode(4, 0); % at the beginning of the program



brightness = brick.LightReflect(4); % used anywhere within the program, creates variable

disp(brightness);   % displays the variable