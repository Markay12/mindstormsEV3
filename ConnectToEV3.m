%% Run every time you start mindstorm brick

brick = ConnectBrick('T1');

% Play tone
brick.playTone(100, 523.25, 900);
pause(0.9);
brick.playTone(100, 587.33, 400);
pause(0.4);
brick.playTone(100, 622.25, 400);
pause(0.4);
brick.playTone(100, 587.33, 650);
pause(0.65);
brick.playTone(100, 523.25, 200);
pause(0.2);
brick.playTone(100, 523.25, 900);
pause(0.9);
brick.playTone(100, 523.25, 900);
pause(0.9);
brick.playTone(100, 466.16, 400);
pause(0.4);
brick.playTone(100, 392, 200);
pause(0.2);
brick.playTone(100, 466.16, 200);
pause(0.2);
brick.playTone(100, 523.25, 1350);
pause(1.35);
brick.playTone(100, 523.25, 400);
pause(0.4);
brick.playTone(100, 523.25, 900);
pause(0.9);
brick.playTone(100, 587.33, 400);
pause(0.4);
brick.playTone(100, 622.25, 400);
pause(0.4);
brick.playTone(100, 587.33, 650);
pause(0.65);
brick.playTone(100, 523.25, 200);
pause(0.2);
brick.playTone(100, 523.25, 900);
pause(0.9);
brick.playTone(100, 523.25, 400);
pause(0.4);
brick.playTone(100, 622.25, 133.33);
pause(0.133);
brick.playTone(100, 523.25, 133.33);
pause(0.133);
brick.playTone(100, 622.25, 133.33);
pause(0.133);
brick.playTone(100, 783.99, 400);
pause(0.4);
brick.playTone(100, 392, 400);
pause(0.4);
brick.playTone(100, 523.25, 900);
pause(0.9);


% Get battery level
brick.GetBattVoltage()

