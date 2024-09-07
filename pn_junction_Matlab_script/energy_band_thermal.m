% in this block of code ==> animation for motion of electrons and holes by
% diff 
%show energy band diagram at thermal equilibrium

%% limit
ax1=gca;
ax1.XLim=[-15,15]
hold on
ax1.YLim=[-2,8]
title('Energy Band Diagram @ Thermal Equilibrium')
%% plot
hold on
grid on

x_v1=[10 2];
x_v2=[-2 -10];
x_v=[2 -2];
y1_v=[4.5 5.5];
y2_v=[3 4];
y3_v=[3.75 4.75];
%Ec&Ev
plot(x_v1,[4.5 4.5],'b')
plot(x_v2,[5.5 5.5],'b')
plot(x_v,y1_v,'b')
plot(x_v,y2_v,'b')
plot(x_v1,[3 3],'b')
plot(x_v2,[4 4],'b')

% Ei
plot(x_v1,[3.75 3.75],' :k')
plot(x_v2,[4.75 4.75],' :k')
plot(x_v,y3_v,' :k')
hold on

%Ef
plot([10 -10],[4.25 4.25],':r')

%% electron and holes
%electron
 plot(3,5,'KO',MarkerFaceColor ='K')
 plot(5,5,'KO',MarkerFaceColor ='K')
 plot(7,5,'KO',MarkerFaceColor ='K')
 plot(4,5.5,'KO',MarkerFaceColor ='K')
 plot(6,5.5,'KO',MarkerFaceColor ='K')
 plot(5,6,'KO',MarkerFaceColor ='K')
 plot(-5,6,'KO',MarkerFaceColor ='K')
% holes
plot(-3,3.5,'rO')
plot(-5,3.5,'rO') 
plot(-7,3.5,'rO')
plot(-4,3,'rO')
plot(-6,3,'rO')
plot(-5,2.25,'rO')
plot(5,2.25,'rO')
%% move electron and holes

hold on
obj = VideoWriter("My_video_4");
open(obj)
x1=linspace(5,0,6);
x2=linspace(-5,-1,6);
x3=linspace(-5,-1,6);
x4=linspace(5,0,6);
y1=linspace(6,6,10);
y2=linspace(2.25,2.25,10);

hold on
for i = 2:length(x1)

       
        plot(x1(1:i), y1(1:i),'KO',MarkerFaceColor ='K')
        plot(5, 6,'wO')
        plot(x1(1:i-1), y1(1:i-1),'wO',MarkerFaceColor ='w')

         plot(x2(1:i), y1(1:i),'KO',MarkerFaceColor ='K')
       plot(x2(1:i-1), y1(1:i-1),'wO',MarkerFaceColor ='w')

        
        plot(x3(1:i), y2(1:i),'rO')
        plot(x3(1:i-1), y2(1:i-1),'wO',MarkerFaceColor ='w')

        plot(x4(1:i), y2(1:i),'rO')
       plot(x4(1:i-1), y2(1:i-1),'wO',MarkerFaceColor ='w')
        
        M(i) = getframe;
     
        pause(0.1)
 
end

