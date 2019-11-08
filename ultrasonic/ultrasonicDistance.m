%% finds the distance to the closest object

distance = brick.UltrasonicDist(3);

disp(distance);

if (distance < 20)
    brick.StopMotor('A');
end

    
    
    
    
    % error of 255 if the object is too far away
    
    % units are in cm
    
