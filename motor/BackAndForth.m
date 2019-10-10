count = 0;

    while count ~= 10
        if brick.TouchPressed(1) == 1
            count = count + 1;
            brick.ResetMotorAngle('A');
            brick.ResetMotorAngle('B');
            brick.MoveMotorAngleRel('A', -100, 180, 'Brake');
            brick.MoveMotorAngleRel('B', 100, 180, 'Brake');
        end
        if brick.TouchPressed(1) == 0
            brick.ResetMotorAngle('A');
            brick.ResetMotorAngle('B');
            brick.MoveMotorAngleRel('A', 100, 180, 'Brake');
            brick.MoveMotorAngleRel('B', -100, 180, 'Brake');
        end
            
    end
     