%% Set up %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%------- Change ME -------------------------
mylego = 'T1';                           % Set up MATLAB and EV3 communication
RANGE = 0.3;                                % Detection range in meters
%-------------------------------------------


mysensor = sonicSensor(mylego);   % Set up ultrasonic sensor

%% Operations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

while ~readButton(mylego, 'up')             % Exit if UP button is pressed
    dis = readDistance(mysensor);           % Read ultrasonic sensor value
    freq = 5000*(RANGE-dis)/RANGE;          % Increase frequency as getting closer
    volume = 100*(RANGE-dis)/RANGE;         % Increase volume as getting closer
    playTone(mylego, freq, 1, volume);      % Play tone
end

%% Clean up %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
