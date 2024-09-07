
% in this block of code ==> animation for motion of electrons and holes by
% diff 
%show energy band diagram at forward bias
%% limit
ax1=gca;
ax1.XLim=[-15,15];
hold on
ax1.YLim=[-2,8];
title('Energy Band Diagram @ Forward Bias')
%% plot
hold on
grid on

x_v1=[10 2];
x_v2=[-2 -10];
x_v=[2 -2];
y1_v=[4.5 5];
y2_v=[3.5 4];
y3_v=[4 4.5];
% Ec&Ev
plot(x_v1,[4.5 4.5],'b')
plot(x_v2,[5 5],'b')
plot(x_v,y1_v,'b')
plot(x_v,y2_v,'b')
plot(x_v1,[3.5 3.5],'b')
plot(x_v2,[4 4],'b')
% Ei
plot(x_v1,[4 4],' :k')
plot(x_v2,[4.5 4.5],' :k')
plot(x_v,y3_v,' :k')
% Ef 
plot(x_v1,[4.3 4.3],':r')
plot(x_v2,[4.2 4.2],':r')

%% electron&holes

%electron
 plot(3,4.75,'KO',MarkerFaceColor ='K')
 plot(5,4.75,'KO',MarkerFaceColor ='K')
 plot(7,4.75,'KO',MarkerFaceColor ='K')
 plot(4,5.5,'KO',MarkerFaceColor ='K')
 plot(6,5.5,'KO',MarkerFaceColor ='K')
 plot(5,6,'KO',MarkerFaceColor ='K')
 plot(-5,5.5,'KO',MarkerFaceColor ='K')
% holes
plot(-3,3.75,'rO')
plot(-5,3.75,'rO') 
plot(-7,3.75,'rO')
plot(-4,3,'rO')
plot(-6,3,'rO')
plot(-5,2.25,'rO')
plot(5,3,'rO') 

%% move electron&holes
hold on
obj = VideoWriter("My_video_4");
open(obj)
x1=linspace(4,-1,6);
x2=linspace(6,0,6);
x3=linspace(5,-0.5,6);
x4=linspace(-5,-2,6);
y1=linspace(5.5,5.5,10);
y3=linspace(6,6,10);
x5=linspace(-4,-.5,6);
x6=linspace(-6,-1.5,6);
x7=linspace(-5,-1,6);
x8=linspace(5,0.5,6);
y5=linspace(3,3,10);
y7=linspace(2.25,2.25,10);

hold on
for i = 1:length(x1)
     plot(x1(1:i), y1(1:i),'KO',MarkerFaceColor ='K')
     plot(x1(1:i-1), y1(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x2(1:i), y1(1:i),'KO',MarkerFaceColor ='K')
    plot(x2(1:i-1), y1(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x3(1:i), y3(1:i),'KO',MarkerFaceColor ='K')
    plot(x3(1:i-1), y3(1:i-1),'wO',MarkerFaceColor ='w')

    plot(x4(1:i), y1(1:i),'KO',MarkerFaceColor ='K')
    plot(x4(1:i-1), y1(1:i-1),'wO',MarkerFaceColor ='w')

    plot(x5(1:i), y5(1:i),'rO')
    plot(x5(1:i-1), y5(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x6(1:i), y5(1:i),'rO')
    plot(x6(1:i-1), y5(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x7(1:i), y7(1:i),'rO')
    plot(x7(1:i-1), y7(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x8(1:i), y5(1:i),'rO')
    plot(x8(1:i-1), y5(1:i-1),'wO',MarkerFaceColor ='w')

    M(i) = getframe;
    pause(0.1)
end

