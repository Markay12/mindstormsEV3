global key
InitKeyboard();

while 1
    pause(0.1);
    
    
    switch key
        
        case 'uparrow'
            
            % 180 degree turn
            
            brick.MoveMotor('A', 44.95);
            brick.MoveMotor('B', -44.95);
            pause(0.875);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'downarrow'
            
            % 90 degree left turn
            brick.MoveMotor('A', 27);
            brick.MoveMotor('B', -27);
            pause(0.875);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'rightarrow'
            
            % 180 degree right
            
            brick.MoveMotor('A', -28);
            brick.MoveMotor('B', 26.6465);
            pause(0.875);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'q'
            
            brick.StopMotor('A');
            brick.StopMotor('B');
            break;
            
    end
end

CloseKeyboard();