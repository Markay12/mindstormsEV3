global key
InitKeyboard();

brick.SetColorMode(4, 1); % set the color mode of the robot

g = 0;

while 1
    pause(0.01);
    distance = brick.UltrasonicDist(3);
    
    
    switch key
        
        case 'g'
            while (g == 0)
                distance = brick.UltrasonicDist(3);
                color = brick.LightAmbient(4);
                
                brick.MoveMotor('A', 50);
                brick.MoveMotor('B', 50);
                
                if (distance < 20 && color ~= 5)
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    brick.MoveMotor('A', 60);
                    brick.MoveMotor('B', -60);
                
                end
            end
            
            
        case 'q'
            
            disp("Quit program");
            brick.StopMotor('A');
            brick.StopMotor('B');
            break;
    end
end


CloseKeyboard();
