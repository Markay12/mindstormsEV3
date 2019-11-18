global key
InitKeyboard();

while 2
    color = brick.ColorColor(1);
    
    switch color
        case 2  % blue
            while 1
                pause (0.1);
                switch key
                    case 'uparrow'
                        disp('up Arrow Pressed');
                        brick.MoveMotor('A',50);
                        brick.MoveMotor('B',50);
                        
                    case 'downarrow'
                        disp('down Arrow Pressed');
                        brick.MoveMotor('A',-50);
                        brick.MoveMotor('B',-50);
                        
                    case 'leftarrow'
                        disp('left Arrow Pressed');
                        brick.MoveMotor('A',50);
                        brick.MoveMotor('B',0);
                        
                    case 'rightarrow'
                        disp('right Arrow Pressed');
                        brick.MoveMotor('A',0);
                        brick.MoveMotor('B',50);
                        
                    case 'd'
                        disp('Gard rail down');
                        brick.MoveMotor('C', -25);
                        
                    case 'f'
                        disp('Gard rail down');
                        brick.MoveMotor('C', 25);
                        
                    case 0
                        disp('No key presed');
                        brick.StopMotor('A');
                        brick.StopMotor('B');
                        brick.StopMotor('C');
                    case 'b'
                        color = brick.ColorColor(1);
                        disp (color);
                    case 'q'
                        brick.StopMotor('A');
                        brick.StopMotor('B');
                        break;
                        
                        
                end
            end
            
        case 4  % yellow
            while 1
                pause (0.1);
                switch key
                    case 'uparrow'
                        disp('up Arrow Pressed');
                        brick.MoveMotor('A',50);
                        brick.MoveMotor('B',50);
                        
                    case 'downarrow'
                        disp('down Arrow Pressed');
                        brick.MoveMotor('A',-50);
                        brick.MoveMotor('B',-50);
                        
                    case 'leftarrow'
                        disp('left Arrow Pressed');
                        brick.MoveMotor('A',50);
                        brick.MoveMotor('B',0);
                        
                    case 'rightarrow'
                        disp('right Arrow Pressed');
                        brick.MoveMotor('A',0);
                        brick.MoveMotor('B',50);
                        
                    case 'd'
                        disp('Gard rail down');
                        brick.MoveMotor('C', -25);
                        
                    case 'f'
                        disp('Gard rail down');
                        brick.MoveMotor('C', 25);
                        
                    case 0
                        disp('No key presed');
                        brick.StopMotor('A');
                        brick.StopMotor('B');
                        brick.StopMotor('C');
                    case 'b'
                        color = brick.ColorColor(1);
                        disp (color);
                    case 'q'
                        brick.StopMotor('A');
                        brick.StopMotor('B');
                        break;
                        
                        
                end
            end
            
        case 5  % red
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            %
            %
            %
            %
            %
            %
            %
            %
        case 1  % black
            color = brick.ColorColor(1);
            disp (color);
            distance = brick.UltrasonicDist(2);
            if distance < 45 %if distance less than 45, brick will go stright
                brick.MoveMotor('A',25.5);
                brick.MoveMotor('B',26);
                if brick.TouchPressed(4) %if touched, turn 90 degrees
                    
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    color = brick.ColorColor(1);
                    disp (color);
                    pause(1);
                    brick.MoveMotor('A',-24.5);
                    brick.MoveMotor('B',-26);
                    pause(2);
                    angle = brick.GyroAngle(3);
                    needed = -83.5 + angle;
                    while angle > needed
                        brick.MoveMotor('A',25);
                        brick.MoveMotor('B',0);
                        angle = brick.GyroAngle(3);
                    end
                    brick.MoveMotor('A',25.25);
                    brick.MoveMotor('B',24);
                    pause(2.5);
                    distance = brick.UltrasonicDist(2);
                    
                end
            else
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause (1);
                brick.StopMotor('A');
                brick.StopMotor('B');
                angle = brick.GyroAngle(3);
                needed = 82.5 + angle;
                while angle < needed
                    brick.MoveMotor('A',0);
                    brick.MoveMotor('B',25);
                    angle = brick.GyroAngle(3);
                end
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause(3);
                distance = brick.UltrasonicDist(2);
            end
            
        case 0 % unknown color
            color = brick.ColorColor(1);
            disp (color);
            distance = brick.UltrasonicDist(2);
            if distance < 45 %if distance less than 45, brick will go stright
                brick.MoveMotor('A',25.5);
                brick.MoveMotor('B',26);
                if brick.TouchPressed(4) %if touched, turn 90 degrees
                    
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    color = brick.ColorColor(1);
                    disp (color);
                    pause(1);
                    brick.MoveMotor('A',-24.5);
                    brick.MoveMotor('B',-26);
                    pause(2);
                    angle = brick.GyroAngle(3);
                    needed = -83.5 + angle;
                    while angle > needed
                        brick.MoveMotor('A',25);
                        brick.MoveMotor('B',0);
                        angle = brick.GyroAngle(3);
                    end
                    brick.MoveMotor('A',25.25);
                    brick.MoveMotor('B',24);
                    pause(2.5);
                    distance = brick.UltrasonicDist(2);
                    
                end
            else
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause (1);
                brick.StopMotor('A');
                brick.StopMotor('B');
                angle = brick.GyroAngle(3);
                needed = 82.5 + angle;
                while angle < needed
                    brick.MoveMotor('A',0);
                    brick.MoveMotor('B',25);
                    angle = brick.GyroAngle(3);
                end
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause(3);
                
                distance = brick.UltrasonicDist(2);
            end
            
            %end
            
        case 6  % white
            color = brick.ColorColor(1);
            disp (color);
            distance = brick.UltrasonicDist(2);
            if distance < 45 %if distance less than 45, brick will go stright
                brick.MoveMotor('A',25.5);
                brick.MoveMotor('B',26);
                if brick.TouchPressed(4) %if touched, turn 90 degrees
                    
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    color = brick.ColorColor(1);
                    disp (color);
                    pause(1);
                    brick.MoveMotor('A',-24.5);
                    brick.MoveMotor('B',-26);
                    pause(2);
                    angle = brick.GyroAngle(3);
                    needed = -83.5 + angle;
                    while angle > needed
                        brick.MoveMotor('A',25);
                        brick.MoveMotor('B',0);
                        angle = brick.GyroAngle(3);
                    end
                    brick.MoveMotor('A',25.25);
                    brick.MoveMotor('B',24);
                    pause(2.5);
                    distance = brick.UltrasonicDist(2);
                    
                end
            else
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause (1);
                brick.StopMotor('A');
                brick.StopMotor('B');
                angle = brick.GyroAngle(3);
                needed = 82.5 + angle;
                while angle < needed
                    brick.MoveMotor('A',0);
                    brick.MoveMotor('B',25);
                    angle = brick.GyroAngle(3);
                end
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause(3);
                
                distance = brick.UltrasonicDist(2);
            end
            
            %end
            
        case 7  % brown
            color = brick.ColorColor(1);
            disp (color);
            distance = brick.UltrasonicDist(2);
            if distance < 45 %if distance less than 45, brick will go stright
                brick.MoveMotor('A',25.5);
                brick.MoveMotor('B',26);
                if brick.TouchPressed(4) %if touched, turn 90 degrees
                    
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    color = brick.ColorColor(1);
                    disp (color);
                    pause(1);
                    brick.MoveMotor('A',-24.5);
                    brick.MoveMotor('B',-26);
                    pause(2);
                    angle = brick.GyroAngle(3);
                    needed = -83.5 + angle;
                    while angle > needed
                        brick.MoveMotor('A',25);
                        brick.MoveMotor('B',0);
                        angle = brick.GyroAngle(3);
                    end
                    brick.MoveMotor('A',25.25);
                    brick.MoveMotor('B',24);
                    pause(2.5);
                    distance = brick.UltrasonicDist(2);
                    
                end
            else
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause (1);
                brick.StopMotor('A');
                brick.StopMotor('B');
                angle = brick.GyroAngle(3);
                needed = 82.5 + angle;
                while angle < needed
                    brick.MoveMotor('A',0);
                    brick.MoveMotor('B',25);
                    angle = brick.GyroAngle(3);
                end
                brick.MoveMotor('A',25.25);
                brick.MoveMotor('B',24);
                pause(3);
                
                distance = brick.UltrasonicDist(2);
            end
            
    end
end