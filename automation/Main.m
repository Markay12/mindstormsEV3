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
                
                if (distance > 20)
                    distance = brick.UltrasonicDist(3);
                    
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 47);
                    numRightTurns = 0;
                    numLeftTurns = 0;
                    
                    
                elseif (distance < 20)
                    
                    
                    % rotate right
                    % 90 degree left turn
                    brick.MoveMotor('A', -27);
                    brick.MoveMotor('B', 27);
                    
                    pause(0.875);
                    
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 47);
                    
                    pause(1);
                    
                    numRightTurns = numRightTurns + 1;
                    
                    if (numRightTurns == 3)
                        numRightTurns = 0;
                        numLeftTurns = 0;
                    end
                    
                    distance = brick.UltrasonicDist(3);
                    
                elseif (distance > 18.3)
                    
                    distance = brick.UltrasonicDist(3);
                    
                    % 180 degree left turn
                    
                    brick.MoveMotor('A', 44.95);
                    brick.MoveMotor('B', -44.95);
                    
                    pause(0.875);
                    
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 47);
                    
                    pause(2);
                    
                    numLeftTurns = numLeftTurns + 1;
                    
                    if(numLeftTurns == 3)
                        numLeftTurns = 0 ;
                    end
                    
                    brick.UltrasonicDist(3);
                    
                else
                    
                    % move motors forward
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('B', 47);
                    
                    pause(0.1);
                    
                    numLeftTurns = 0;
                    numRightTurns = 0;
                    
                end
                
            end
            
            
            
        case 'q'
            
            disp('Quit Program');
            brick.StopMotor('A');
            brick.StopMotor('B');
            break;
            
    end % end of switch statement
end % end of while loop


CloseKeyboard();

