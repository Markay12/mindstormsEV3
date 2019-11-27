global key
InitKeyboard();

startMoving = 0;

numRightTurns = 0;
numLeftTurns = 0;

while 1
    pause(0.1);
    distance = brick.UltrasonicDist(3);
    
    switch key
        
        case 'uparrow' % on the up arrow, the auto-driving will begin
            
            while(startMoving == 0)
                
                distance = brick.UltrasonicDist(3);
                
                if (distance > 15)
                    
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 48.75);
                    numRightTurns = 0;
                    numLeftTurns = 0;
                    
                    distance = brick.UltrasonicDist(3);
                    disp(distance);
                    
                elseif (distance < 15)
                    
                    % turn right
                    
                    brick.MoveMotor('A', -29);
                    brick.MoveMotor('B', 27);
                    pause(0.875);
                    brick.StopMotor('A');
                    brick.StopMotor('B');
                    numRightTurns = 1;
                    pause(0.5);
                    distance = brick.UltrasonicDist(3);
                    disp(distance);
                    pause(0.5);

                    
                    if (distance < 15)
                        
                        % turn to the right
                        
                        brick.MoveMotor('A', -49.1);
                        brick.MoveMotor('B', 45.9125);
                        pause(0.875);
                        brick.StopMotor('A');
                        brick.StopMotor('B');
                        
                        distance = brick.UltrasonicDist(3);
                        

                        
                        if (distance < 15)
                            
                            % turn backwards (around 3pi/2)
                            
                            brick.MoveMotor('A', 27);
                            brick.MoveMotor('B', -29);
                            pause(0.875);
                            brick.StopMotor('A');
                            brick.StopMotor('B');
                            startMoving = 0;
                            
                            distance = brick.UltrasonicDist(3);
                            
                            
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

