%% Run every time you start mindstorm brick

brick = ConnectBrick('T1');

% Play tone
brick.beep();


% Get battery level
brick.GetBattVoltage()