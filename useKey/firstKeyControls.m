global key
InitKeyboard();
brick.SetColorMode(4, 4);

while 1
    pause(0.1);
    switch key
        
        case 'w'
            brick.MoveMotor('C', 30);
            pause(0.5);
            brick.StopMotor('C');
            
        case 's'
            brick.MoveMotor('C', -2);
            pause(0.35);
            brick.StopMotor('C');
            
        
        
        case 'uparrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', 50);
            brick.MoveMotor('B', 50);
            
            
        case 'downarrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', -50);
            
        case 'leftarrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', 50);
            brick.MoveMotor('B', -50);
            pause(0.10);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'rightarrow'
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', 50);
            pause(0.10);
            brick.StopMotor('A');
            brick.StopMotor('B');
            
        case 'space'
            brick.StopMotor('A');
            brick.StopMotor('B');
            
            
        case 'd'
            
            color_rgb = brick.ColorRGB(4); % gathers the color
            
            fprintf("\t Red: %d\n", color_rgb(1));
            fprintf("\t Green: %d\n", color_rgb(2));
            fprintf("\t Blue: %d\n", color_rgb(3));
            
            
        case 'q'    % Press 'q' to quit
            brick.StopMotor('A');
            brick.StopMotor('B');
            break;
            
        case 'o'
            
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            brick.playTone(100, 466.16, 100);
            pause(0.1);
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            brick.playTone(100, 466.16, 100);
            pause(0.1);
            
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            
            brick.playTone(100, 466.16, 100);
            pause(0.1);
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 400);
            pause(0.4);
            
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            
            brick.playTone(100, 466.16, 100);
            pause(0.1);
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            brick.playTone(100, 466.16, 100);
            pause(0.1);
            
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            
            brick.playTone(100, 466.16, 100);
            pause(0.1);
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 300);
            pause(0.4);
            
            brick.playTone(100, 587.33, 100);
            pause(0.2);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            brick.playTone(100, 698.46, 400);
            pause(0.4);
            
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            
            brick.playTone(100, 587.33, 400);
            pause(0.4);
            brick.playTone(100, 587.33, 100);
            pause(0.2);
            
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            brick.playTone(100, 587.33, 100);
            pause(0.1);
            
            brick.playTone(100, 698.46, 400);
            pause(0.4);
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 587.33, 200);
            pause(0.2);
            
            brick.playTone(100, 466.16, 200);
            pause(0.2);
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            
            brick.playTone(100, 349.23, 200);
            pause(0.2);
            brick.playTone(100, 466.16, 900);
            pause(0.9);
            
    end
end

CloseKeyboard();