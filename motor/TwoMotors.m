brick.MoveMotor('A', -100);
brick.MoveMotor('B', 100);
pause(1)
brick.MoveMotor('A', 50);
brick.StopMotor('B');
pause(3)
brick.MoveMotor('B', -50)
pause(5)
brick.StopMotor('A')
brick.StopMotor('B')







