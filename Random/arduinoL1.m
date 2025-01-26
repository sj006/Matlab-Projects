clear
a = arduino();
led = "D12";
for k = 1:20
    disp("turn on LED");
    writeDigitalPin(a,led,1);
    pause(1);
    disp("turn off");
    writeDigitalPin(a,led,0);
    pause(0.5);
end
