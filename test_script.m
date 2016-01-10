%test script
clear all;
clc;
center = [0 0 7];
angles_i = [ 0 , 0 , 0 , 0 , 0 , 0;
            60 ,60 ,60 ,60 ,60 ,60 ;         % initial angle matrix 
            30 ,30 ,30, 30, 30, 30 ];

angles_f =   [ -30    30    30   -30    30   -30;
    60    90    37    60    37    90;
    45    30    45    45    45    30];

gait2 =[  0     0     0     0     0     0;
    60    60    60    60    60    60;
    30    30    30    30    30    30;
   -30   -30     0   -30     0   -30;
    37    37    60    60    60    37;
    45    45    30    30    30    45;
   -30   -30     0   -30   -30   -30;
    37    60    60    90    37    37;
    45    45    30    30    45    45;
   -30   -30   -30    30   -30   -30;
    37    60    37    60    37    37;
    45    45    45    45    45    45;
   -30    30   -30    30   -30   -30;
    37    60    60    60    37    37;
    45    45    45    45    45    45;
   -30    30    30    30   -30   -30;
    37    60    60    60    60    90;
    45    30    45    30    45    30;
   -30    30    30    30   -30    30;
    90    60    60    60    60    90;
    30    30    45    30    45    30;
   -30    30    30    30   -30    30;
    90    60    60    60    60    37;
    30    30    30    30    45    45];


    [a,b,c,d] = robot_motors_coordinates( center,angles_f(1,:),angles_f(2,:),angles_f(3,:));
    plot_spider(a,b,c,d);

    valid_transformation( angles_i , angles_f )
    
    
    
    