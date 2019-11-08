global key
InitKeyboard();

while 1
    pause(0.1)
    
    brick.MoveMotor('A', 50);
    brick.MoveMotor('B', 50);
    
    distance = brick.UltrasonicDist(3);
    
    if (distance < 20)
        brick.StopMotor('A');
        brick.StopMotor('B');
    end
end


CloseKeyboard();