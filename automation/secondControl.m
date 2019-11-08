global key
InitKeyboard();

a = 0;
color = 1;
distance = brick.UltrasonicDist(3);

while 1
    pause(0.1);
    switch key
        case 'a'
            while a == 0
                pause(0.1);
                brick.MoveMotor('A', -40);
                brick.MoveMotor('D', -44);
                
                distance = brick.UltrasonicDist(3);
                color = brick.ColorColor(4);
                
            end
            
            %---------------------------------
            if distance > 45  %gap
                
                pause(0.85);
                brick.StopMotor('A');
                brick.StopMotor('D');
                
                brick.MoveMotor('A', 19.25);
                brick.MoveMotor('D', -19.25);
                
                pause(1.5);
                brick.StopMotor('A');
                brick.StopMotor('D');
                
                brick.MoveMotor('A', -40);
                brick.MoveMotor('D', -44);
                pause(2);
            else
                brick.MoveMotor('A', -40);
                brick.MoveMotor('D', -44);
            end
            %-------------------------------------
            if color == 5 %stopsign
                brick.StopAllMotors();
                pause(2);
            end
            %-------------------------------------
            if color == 2 %usercontrol blue
                while 1
                    pause(0.1);
                    brick.StopMotor('A');
                    brick.StopMotor('D');
                    %If this doesn't initially work, try setting a to 1
                    switch key
                        case 'uparrow'
                            brick.MoveMotor('A', -50);
                            brick.MoveMotor('B', -50);
                        case 'downarrow'
                            brick.MoveMotor('A', 50);
                            brick.MoveMotor('B', 50);
                        case 'leftarrow'
                            brick.MoveMotor('A', -50);
                            brick.MoveMotor('B', 50);
                        case 'rightarrow'
                            brick.MoveMotor('A', 50);
                            brick.MoveMotor('B', -50);
                        case 'w'
                            brick.MoveMotor('C', 20);
                        case 's'
                            brick.MoveMotor('C', -10);
                        case 'x'
                            brick.StopMotor('A');
                            brick.StopMotor('D');
                            brick.StopMotor('C');
                        case 'q'
                            break;
                    end
                end
            end
            %---------------------------------------
            if color == 3 %usercontrol green
                while 1
                    pause(0.1);
                    brick.StopMotor('A');
                    brick.StopMotor('D');
                    %If this doesn't initially work, try setting a to 1
                    switch key
                        case 'uparrow'
                            brick.MoveMotor('A', -50);
                            brick.MoveMotor('D', -50);
                        case 'downarrow'
                            brick.MoveMotor('A', 50);
                            brick.MoveMotor('D', 50);
                        case 'leftarrow'
                            brick.MoveMotor('A', -50);
                            brick.MoveMotor('D', 50);
                        case 'rightarrow'
                            brick.MoveMotor('A', 50);
                            brick.MoveMotor('D', -50);
                        case 'w'
                            brick.MoveMotor('C', 20);
                        case 's'
                            brick.MoveMotor('C', -10);
                        case 'x'
                            brick.StopMotor('A');
                            brick.StopMotor('D');
                            brick.StopMotor('C');
                        case 'q'
                            break;
                    end
                end
            end
    end
end

