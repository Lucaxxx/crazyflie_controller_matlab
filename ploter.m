t=velout.time;

vx=velout.data(:,1);
vy=velout.data(:,2);
vz=velout.data(:,3);

px=posout.data(:,1);
py=posout.data(:,2);
pz=posout.data(:,3);

roll=angleout.data(:,1);
pitch=angleout.data(:,2);
yaw=angleout.data(:,3);

omega1=avelout.data(:,1);
omega2=avelout.data(:,2);
omega3=avelout.data(:,3);

subplot(2,2,1);
h1=plot(t,px,'LineStyle','-');
hold on;
h2=plot(t,py,'LineStyle','--');
h3=plot(t,pz,'LineStyle','-.');
xlabel('t(s)');
ylabel('postion(m)');
legend([h1 h2 h3],'x','y','z');
grid on;

subplot(2,2,2);
h1=plot(t,vx,'LineStyle','-');
hold on;
h2=plot(t,vy,'LineStyle','--');
h3=plot(t,vz,'LineStyle','-.');
xlabel('t(s)');
ylabel('velcity(m/s');
legend([h1 h2 h3],'vx','vy','vz');
grid on;

subplot(2,2,3);
h1=plot(t,roll,'LineStyle','-');
hold on;
h2=plot(t,pitch,'LineStyle','--');
h3=plot(t,yaw,'LineStyle','-.');
xlabel('t(s)');
ylabel('angle(degree)');
legend([h1 h2 h3],'roll','pitch','yaw');
grid on;

subplot(2,2,4);
h1=plot(t,omega1,'LineStyle','-');
hold on;
h2=plot(t,omega2,'LineStyle','--');
h3=plot(t,omega3,'LineStyle','-.');
xlabel('t(s)');
ylabel('angle velcity(degree/s)');
legend([h1 h2 h3],'omega1','omega2','omega3');
grid on;

figure
green=[0 0 0.8];
h1=plot3([],[],[],'LineWidth',1.3,'Color',green);
h1=plot3(px,-py,-pz,'LineWidth',1.3,'Color',green);
grid on
hold on
h2=plot3(xins,yins,zins,'--r','LineWidth',1.3);
title('3D Trajectory');
xlabel('X (m)');
ylabel('Y (m)');
zlabel('Z (m)');
ylim([-1.2,1.2]);
xlim([-1.2,1.2]);
zlim([0,1.5]);
legend([h1 h2],'actual','desired');