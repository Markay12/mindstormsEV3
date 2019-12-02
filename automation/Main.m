global key
InitKeyboard();

brick.SetColorMode(4, 2); % set sensor 4 to colorCode 

startMoving = 0;

numRightTurns = 0;
numLeftTurns = 0;

while 1
    pause(0.1);
    distance = brick.UltrasonicDist(3); % gather the distance data
    color = brick.ColorCode(4); % gather the color data
    
    switch key
        
        case 'uparrow' % on the up arrow, the auto-driving will begin
            
            while(startMoving == 0)
                
                distance = brick.UltrasonicDist(3);
                color = brick.ColorCode(4);
                
                
                
                if (distance > 15 && color ~= 5)
                    
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 48.6465);
                    numRightTurns = 0;
                    numLeftTurns = 0;
                    
                    distance = brick.UltrasonicDist(3);
                    disp(distance);
                    
                
                    
                elseif (distance > 15 && color == 5)
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    pause(3);
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 48.6465);
                    pause(1);
                    
                elseif (distance < 15)
                    
                    % turn right
                    
                    brick.MoveMotor('A', -28.785);
                    brick.MoveMotor('B', 27);
                    pause(0.875);
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    numRightTurns = 1;
                    pause(0.5);
                    distance = brick.UltrasonicDist(3);
                    disp(distance);
                    pause(0.5);
                    
                    distance = brick.UltrasonicDist(3);
                    disp(distance);

                    
                    if (distance < 15)
                        
                        % turn to the left 180 degrees
                        
                        brick.MoveMotor('A',  45.9125); % -49.1
                        brick.MoveMotor('B', -49.1); % 45.9125
                        pause(0.875);
                        brick.StopMotor('A');
                        brick.StopMotor('B');
                        
                        distance = brick.UltrasonicDist(3);
                        disp(distance);
                        

                        if (distance < 15)
                            
                            % turn backwards (around 3pi/2)
                            
                            brick.MoveMotor('A', 27);
                            brick.MoveMotor('B', -28.785);
                            pause(0.875);
                            brick.StopMotor('A');
                            brick.StopMotor('B');
                           
                            
                            distance = brick.UltrasonicDist(3);
                            startMoving = 1;
                            
                            
                        end
                        
                        
                        
                        
                        
                    end
                end
            end
            
            
            
        case 'q'
            
            disp('Quit Program');
            brick.StopMotor('A');
            brick.StopMotor('B');
            break;
            
        case 'r'
            
            disp('Restart');
            disp('Make sure to press the ''Up Arrow''');
            startMoving = 0;
            
            
    end % end of switch statement
    
end % end of while loop


CloseKeyboard();

