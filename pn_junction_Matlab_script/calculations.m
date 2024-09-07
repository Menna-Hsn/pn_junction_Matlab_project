% in this block of code ==> graphs for concentration of electrons & holes ,
% electric field , built_in potential and charge density
%also, it can calculate w,xno,xpo,E_max,vbi,npoand pno


%% constant
q_c=1.6*10^-19;
epsilon_si=11.8*8.854*10^-14;
T_k=300;
K=1.38*10^-23;
ni=1.5*10^10;
x=linspace(-0.0001,0.0001,10000);

%% inputs 
ND=input('enter ND in(cm^-3)');
NA=input('enter NA in(cm^-3)');

%% built_in potential
vbi=(K*T_k/q_c)*log(NA*ND/(ni^2)) 

%% width 
w=sqrt((2*epsilon_si/q_c)*vbi*((NA+ND)/(NA*ND)))
xpo=(ND*w)/(ND+NA)
xno=w-xpo

%% imp_eq.;
npo=ND*exp((-q_c*vbi)/(K*T_k))
pno=NA*exp((-q_c*vbi)/(K*T_k))
figure (1)
%% concentration n&p @thermal equ.
figure(1)
subplot(2,1,1)
x_1=[-xpo -(xpo+10^-4)];
x_2=[(xno+10^-4)  xno];

plot(x_2,[ND ND],'--k');
hold on
grid on
plot(x_1,[NA NA],'-- r');
plot(x_1,[npo npo],'-- k');
plot(x_2,[pno pno],'--r');
 %
 x_3=[xno -xpo];
 y_1=[ND npo];
 y_2=[pno NA];

 plot(x_3,y_1,'m:');
 plot(x_3,y_2,'m:');
 
 xlabel ('$ x $(cm)','Interpreter','latex');
 ylabel('$concentration (cm^-3)$','Interpreter','latex');
 legendstring={'$\ nno$','$\ ppo$','$\ npo$','$\ pno$'};
 legend(legendstring, 'interpreter', 'latex');
 ax1=gca;
 title('concentration n&p @thermal equ.','Interpreter','latex','FontSize',8);
 ax1=gca;
ax1.XLim=[-2*10^-4,2*10^-4];
ax1.YLim=[-1*10^15 10*10^15];
 %% v
 subplot(2,1,2)
 hold on
 grid on
x1_v=[xno+10^-4 xno];
x2_v=[-xpo -(xpo+10^-4)];
x3_v=[xno -xpo];

plot(x1_v,[vbi vbi],'r-')
plot(x2_v,[0 0],'r-')
plot(x3_v,[vbi 0],'r-')
xlabel ('$ x $(cm)','Interpreter','latex');
ylabel('$potential (V)$','Interpreter','latex');
title('potential (V) vs.X (cm)','Interpreter','latex','FontSize',10);
 %% electric field
 figure(2)
 subplot(2,1,1)
 hold on
 grid on
 E_max=q_c*ND*xno/epsilon_si
 x1=[xno 0 -xpo];
 y1=[0 -E_max 0];
 plot(x1,y1)
 xlabel ('$ x $(cm)','Interpreter','latex');
ylabel('$electric field(V/cm) $','Interpreter','latex');
title('electric field (V/cm) vs.X (cm)','Interpreter','latex','FontSize',10);
 %% Row
subplot(2,1,2)
xr1=[xno 0];
xr2=[0 -xpo];
yr1= [0 ND];
yr2=[-NA 0];
plot(xr1,[ND ND],'-b');
hold on
grid on
plot(xr2,[-NA -NA],'r');
plot([0 0],yr1,'b');
plot([xno xno],yr1,'b');
plot([0 0],yr2,'r');
plot([-xpo -xpo],yr2,'r');
plot([12*10^-4 -12*10^-4],[0 0],'k-');

xlabel ('$ x $(cm)','Interpreter','latex');
ylabel('$charge density  $','Interpreter','latex');
title('charge density   vs.X ','Interpreter','latex','FontSize',10);



