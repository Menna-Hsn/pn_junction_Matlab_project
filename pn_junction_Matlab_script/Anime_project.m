% in this block of code ==> animation for electron&hole diff.
%and show depletion width 
%%
% x & y limits 
hold on
grid on
ax1=gca;
ax1.XLim=[-10,10];
hold on
ax1.YLim=[-2 5];
title('pn-Junction');
xlabel('x');
ylabel('electrons&holes');
%% electron&holes drawing
obj = VideoWriter("My_video_4");
open(obj)
for j=1:3
for i = 1:4

    plot(i,j,'KO',MarkerFaceColor ='K')
    hold on
    M(i) = getframe;
    pause(0.01)
    plot(-i,j,'rO')
    hold on
    M(i) = getframe;
    pause(0.01)
  
end
end

%% netural region
hold on
obj = VideoWriter("My_video_4");
open(obj)
x1=linspace(1,-1,10);
x2=linspace(-1,1,10);
x3=linspace(1,-1,10);
y1=linspace(3,3,10);
y2=linspace(2,2,10);
y3=linspace(1,1,10);
% 
hold on
for i = 1:length(x1)
    plot(x1(1:i), y1(1:i),'m.')
    plot(x2(1:i), y2(1:i),'m.')
    plot(x3(1:i), y3(1:i),'m.')
  
    M(i) = getframe;
    pause(0.1)
end

plot(1,3,'bo',MarkerFaceColor ='b')
hold on
plot(-1,3,'bo',MarkerFaceColor ='b')
plot(-1,2,'bo',MarkerFaceColor ='b')
plot(1,2,'bo',MarkerFaceColor ='b')
plot(1,1,'bo',MarkerFaceColor ='b')
plot(-1,1,'bo',MarkerFaceColor ='b')

% new column

hold on
obj = VideoWriter("My_video_4");
open(obj)
x1=linspace(2,-2,10);
x2=linspace(-2,2,10);
x3=linspace(2,-2,10);

hold on
for i = 1:length(x1)
    plot(x1(1:i), y1(1:i),'m.')
    plot(x2(1:i), y2(1:i),'m.')
    plot(x3(1:i), y3(1:i),'m.')
  
    M(i) = getframe;
    pause(0.1)
end

plot(-2,1,'bo',MarkerFaceColor ='b')
hold on
plot(2,3,'bo',MarkerFaceColor ='b')
plot(-2,3,'bo',MarkerFaceColor ='b')
plot(-2,2,'bo',MarkerFaceColor ='b')
plot(2,2,'bo',MarkerFaceColor ='b')
plot(2,1,'bo',MarkerFaceColor ='b')
%% xno &xpo limits
a_x1= 2.5;
a_x2=-2.5;
a_y=[0 4 ];
plot([a_x1 a_x1],a_y,':m')
plot([a_x2 a_x2],a_y,':m')

legend("electrons","holes");



