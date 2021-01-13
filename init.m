
xd=1;
yd=0;
zd=0;
yawd=0;

L=4.6e-3;
m=27e-3;
g=9.8;

Ixx=16.823890e-6;%2.3951e-5
Iyy=16.823890e-6;%2.3951e-5
Izz=29.808912e-6;%3.2347e-5

velxmax=1;
velymax=1;
velzmax=1;

f_co_a2=2.130295e-11;
f_co_a1=1.032633e-6;
f_co_a0=5.484560e-4;

tau_co_a1=0.005964552;
tau_co_a0=1.563383e-5;

thrustScale=1000;
thrustBase=36000;
thrustMin=20000;

overhead=1.1;

rpLimit=20;

pidX_kp=1;
pidX_ki=0;
pidX_kd=0;
pidX_iLimit=5000;
pidX_oLimit=velxmax*overhead;

pidY_kp=1;%2
pidY_ki=0;
pidY_kd=0;
pidY_iLimit=5000;
pidY_oLimit=velymax*overhead;

pidZ_kp=2;
pidZ_ki=0.5;
pidZ_kd=0;
pidZ_iLimit=5000;
pidZ_oLimit=min(velzmax,0.5)*overhead;

pidVX_kp=25;%25%8
pidVX_ki=1;%1%1
pidVX_kd=0;%1.2
pidVX_iLimit=5000;
pidVX_oLimit=rpLimit*overhead;

pidVY_kp=25;%25
pidVY_ki=1;%1
pidVY_kd=0;
pidVY_iLimit=5000;
pidVY_oLimit=rpLimit*overhead;

pidVZ_kp=25;
pidVZ_ki=15;
pidVZ_kd=0;
pidVZ_iLimit=5000;
pidVZ_oLimit=(65535/2/thrustScale);

pid_ROLL_kp=6;
pid_ROLL_ki=3;
pid_ROLL_kd=0;
pid_ROLL_iLimit=20;
pid_ROLL_oLimit=65535;


pid_PITCH_kp=6;
pid_PITCH_ki=3;
pid_PITCH_kd=0;
pid_PITCH_iLimit=20;
pid_PITCH_oLimit=65535;

pid_YAW_kp=6;
pid_YAW_ki=1;
pid_YAW_kd=0.35;
pid_YAW_iLimit=360;
pid_YAW_oLimit=65535;

pid_ROLLRATE_kp=250;
pid_ROLLRATE_ki=500;
pid_ROLLRATE_kd=2.5;
pid_ROLLRATE_iLimit=33.3;
pid_ROLLRATE_oLimit=65535;

pid_PITCHRATE_kp=250;
pid_PITCHRATE_ki=500;
pid_PITCHRATE_kd=2.5;
pid_PITCHRATE_iLimit=33.3;
pid_PITCHRATE_oLimit=65535;

pid_YAWRATE_kp=120;
pid_YAWRATE_ki=16.7;
pid_YAWRATE_kd=0;
pid_YAWRATE_iLimit=166.7;
pid_YAWRATE_oLimit=65535;



