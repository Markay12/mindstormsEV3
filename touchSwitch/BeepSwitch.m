disp('PUSH the button to start the tone');

while 1
    touch = brick.TouchPressed(1);
    touch2 = brick.TouchPressed(2);
    if touch || touch2
        brick.beep();
        break;
    end
end









