%% DeterministicRiskFormulation
close all;clear;clc 
EgoX=427.0309;EgoY=15.71829;%location of HV
X=-40:0.1:60;Y=-80:0.1:80; 
[X,Y]=meshgrid(X,Y);
kv=10;ks=0.9;
% Obstacle1 definition
Xobs=458.65694-EgoX;Yobs=15.71829-EgoY;%location
Sta_sigma1=5;Sta_sigma2=1.5;% parameter:size
Vobs=15.75;Vego=14.07261;% speed
Sta_mu1=Xobs;Sta_mu2=Yobs;% StaticRisk 
Mov_mu1=Xobs+0;Mov_mu2=Yobs-1;% DynamicRisk
v_sigma1=kv*abs(Vego-Vobs);v_rel=sign(Vobs-Vego); % speed and direction
[U_Obs]=Risk_Base(X,Y,Sta_mu1,Sta_mu2,Mov_mu1,Mov_mu2,Sta_sigma1,Sta_sigma2,v_sigma1,v_rel,ks);
U_Obs=U_Obs*10;
figure(1);mesh(X,Y,U_Obs);surf(X,Y,U_Obs);
shading interp;colorbar;hold on

%Obstacle 2
Xobs=453.08825-EgoX;Yobs=12.56-EgoY;
Sta_sigma1=5;Sta_sigma2=1.5;
Vobs=16.76;Vego=14.07261;
Sta_mu1=Xobs;Sta_mu2=Yobs;
Mov_mu1=Xobs+0;Mov_mu2=Yobs;
v_sigma1=kv*abs(Vego-Vobs);v_rel=sign(Vobs-Vego); 
[U_Obs]=Risk_Base(X,Y,Sta_mu1,Sta_mu2,Mov_mu1,Mov_mu2,Sta_sigma1,Sta_sigma2,v_sigma1,v_rel,ks);
U_Obs=U_Obs*10;
figure(1);mesh(X,Y,U_Obs);surf(X,Y,U_Obs);
shading interp;colorbar;hold on

%Obstacle 3
Xobs=406.3045-EgoX;Yobs=12.84762-EgoY;
Sta_sigma1=5;Sta_sigma2=1.5;
Vobs=14.79;Vego=14.07261;
Sta_mu1=Xobs;Sta_mu2=Yobs;
Mov_mu1=Xobs+0;Mov_mu2=Yobs;
v_sigma1=kv*abs(Vego-Vobs);v_rel=sign(Vobs-Vego); 
[U_Obs]=Risk_Base(X,Y,Sta_mu1,Sta_mu2,Mov_mu1,Mov_mu2,Sta_sigma1,Sta_sigma2,v_sigma1,v_rel,ks);
U_Obs=U_Obs*10;
figure(1);mesh(X,Y,U_Obs);surf(X,Y,U_Obs);
shading interp;colorbar;hold on
axis equal 
axis([-40 60 -15 15])
axis off 
figure(1);contour(X,Y,U_Obs,20);hold on
colormap(jet)
