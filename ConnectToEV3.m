%% Run every time you start mindstorm brick

brick = ConnectBrick('T1');

% Play tone
brick.playTone(100, 880, 200);
pause(0.2);
brick.playTone(100, 783.99, 200);
pause(0.2);
brick.playTone(100, 880, 200);
pause(0.5);
brick.playTone(100, 783.99, 200);
pause(0.2);
brick.playTone(100, 698.46, 200);
pause(0.2);
brick.playTone(100, 659.25, 200);
pause(0.2);
brick.playTone(100, 587.33, 200);
pause(0.2);
brick.playTone(100, 554.37, 600);
pause(0.2);
brick.playTone(100, 587.33, 200);


% Get battery level
brick.GetBattVoltage()

