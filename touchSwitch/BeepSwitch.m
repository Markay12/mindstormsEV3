disp('PUSH the button to start the tone');

while 1
    touch = brick.TouchPressed(1);
    if touch
        brick.beep();
        break;
    end
end









