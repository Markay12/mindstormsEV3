global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', 100);
            brick.MoveMotor('B', 100);
            
            
        case 'downarrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', -100);
            brick.MoveMotor('B', -100);
            
        case 'leftarrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', 50);
            brick.MoveMotor('B', -50);
            pause(0.5);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'rightarrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', 50);
            pause(0.5);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
        case 'space'
            brick.StopMotor('A');
            brick.StopMotor('B');
            
        case 0  % no key pressed
            disp('No key is pressed');
            
            
        case 'q'    % Press 'q' to quit
            brick.StopMotor('A');
            brick.StopMotor('B');
            break;
    end
end

CloseKeyboard();