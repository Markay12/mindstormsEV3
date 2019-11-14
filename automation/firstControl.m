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
                
                
                if (distance < 20)
                    pause(0.85);
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    brick.MoveMotor('A', 20);
                    brick.MoveMotor('B', -20);
                    pause(1.5);
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    brick.MoveMotor('A', 40);
                    brick.MoveMotor('B', -40);
                    pause(2);
                    
                elseif (distance < 5)
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    pause(0.5);
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', -50);
                    pause(0.25);
                else
                    brick.MoveMotor('A', 40);
                    brick.MoveMotor('B', 40);
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
