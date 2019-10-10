disp('Push the button')

while brick.TouchPressed(1) == 0
    brick.playTone(100, 3000, 200);
    pause(0.2);
end

disp('Done!')