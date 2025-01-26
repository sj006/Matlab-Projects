
clear 
a = arduino("COM3","Uno","Libraries","Ultrasonic");
trigpin = "D9";
echopin = "D10";
u = ultrasonic(a,trigpin,echopin);
dist = readDistance(u);
disp(dist*100);

