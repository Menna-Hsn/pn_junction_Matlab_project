% in this block of code ==> animation for motion of electrons and holes by
% diff 
%show energy band diagram at reverse bias

%% limit &title
ax1=gca;
ax1.XLim=[-8,8];
hold on
ax1.YLim=[-2,8];
title('Energy Band Diagram @ Reverse Bias')
%% plot gragh
hold on
grid on

x_v1=[7 1];
x_v2=[-1 -7];
x_v=[1 -1];
y1_v=[3 6];
y2_v=[1 4];
y3_v=[2 5];
plot(x_v1,[3 3],'b')
plot(x_v2,[6 6],'b')
plot(x_v,y1_v,'b')
plot(x_v,y2_v,'b')
plot(x_v1,[1 1],'b')
plot(x_v2,[4 4],'b')
plot(x_v1,[2 2],' :r')
plot(x_v2,[5 5],' :r')
plot(x_v,y3_v,' :r')
plot(x_v1,[2.75 2.75],' k')
plot(x_v2,[4.25 4.25],' k')

%% electron&holes
plot(2,4,'KO',MarkerFaceColor ='K')
plot(4,4,'KO',MarkerFaceColor ='K')
plot(3,5,'KO',MarkerFaceColor ='K')
plot(-4,7,'KO',MarkerFaceColor ='K')

plot(4,0,'rO')
plot(-6,3,'rO') 
plot(-4,3,'rO')
plot(-5,2,'rO')
%% move electron&holes
hold on
obj = VideoWriter("My_video_4");
open(obj)
x1=linspace(2,0.5,7);
x2=linspace(4,0.5,7);
x3=linspace(3,0,7);
y1=linspace(4,4,10);
y3=linspace(5,5,10);

x4=linspace(-4,-0.5,7);
x5=linspace(-6,-0.5,7);
x6=linspace(-5,0,7);
y4=linspace(3,3,10);
y6=linspace(2,2,10);

x7=linspace(-4,0,7);
x8=linspace(4,0,7);
y7=linspace(7,7,10);
y8=linspace(0,0,10);

hold on
for i = 1:length(x1)
    plot(x1(1:i), y1(1:i),'KO',MarkerFaceColor ='K')
    plot(x1(1:i-1), y1(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x2(1:i), y1(1:i),'KO',MarkerFaceColor ='K')
    plot(x2(1:i-1), y1(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x3(1:i), y3(1:i),'KO',MarkerFaceColor ='K')
    plot(x3(1:i-1), y3(1:i-1),'wO',MarkerFaceColor ='w')

    plot(x4(1:i), y4(1:i),'rO')
    plot(x4(1:i-1), y4(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x5(1:i), y4(1:i),'rO')
    plot(x5(1:i-1), y4(1:i-1),'wO',MarkerFaceColor ='w')
    plot(x6(1:i), y6(1:i),'rO')
    plot(x6(1:i-1), y6(1:i-1),'wO',MarkerFaceColor ='w')

     plot(x7(1:i), y7(1:i),'KO',MarkerFaceColor ='K')
     plot(x7(1:i-1), y7(1:i-1),'wO',MarkerFaceColor ='w')
     plot(x8(1:i), y8(1:i),'rO')
     plot(x8(1:i-1), y8(1:i-1),'wO',MarkerFaceColor ='w')
    M(i) = getframe;
    pause(0.1)
end


%% delete 
plot(0.5,4,'wO',MarkerFaceColor ='w')
plot(0,5,'wO',MarkerFaceColor ='w')
plot(0,2,'wO')
plot(-0.5,3,'wO')
plot(0,0,'wO')
plot(0,7,'wO',MarkerFaceColor ='w')
%% new electron&holes 

hold on
grid on

plot(2,4,'KO',MarkerFaceColor ='K')
plot(4,4,'KO',MarkerFaceColor ='K')
plot(3,5,'KO',MarkerFaceColor ='K')
plot(-4,7,'KO',MarkerFaceColor ='K')

plot(4,0,'rO')
plot(-6,3,'rO') 
plot(-4,3,'rO')
plot(-5,2,'rO')

