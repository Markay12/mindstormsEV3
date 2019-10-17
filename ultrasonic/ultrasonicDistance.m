%% finds the distance to the closest object

distance = brick.UltrasonicDist(3);

x = {};

while i ~= 10
    pause(0.1);
    i = i + 1;
    x = [x, distance];
end



% error of 255 if the object is too far away

% units are in cm

