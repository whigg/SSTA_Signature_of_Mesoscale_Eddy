%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Generate typical idealized monopole/dipole SSTA pattern for oceanic 
% mesoscale eddy
%
% The dipole structure was generated and modified from a matlab script for
% creating a Taijitu/Taiji symbol. URL is as follows.
%
% https://www.ilovematlab.cn/thread-143743-1-1.html
%
% Author: https://github.com/chouj
% Sep 02 2019
% Licensed under GNU General Public License v3.0


%% Idealized/skethy dipole SSTA pattern of an eddy

dt=0.001;
t=0:dt:pi;
tt=0:dt:2*pi;
x=cos(tt);y=sin(tt); % outermost periphery

T=nan(1001,1001); % Target Matrix for Taiji dipole pattern

[X,Y]=meshgrid(-1:0.002:1,-1:0.002:1); % coordinates

x1=0.1*cos(tt)-0.5;y1=0.1*sin(tt); % the circle of left dot
x2=0.1*cos(tt)+0.5;y2=0.1*sin(tt); % the circle of right dot

iwarm=inpolygon(X,Y,x1,y1); % grid points fall within in the left dot
T(iwarm)=1; % set to 1

icold=inpolygon(X,Y,x2,y2); % grid points fall within in the right dot
T(icold)=-1; % set to -1

% The border between Taiji white/Yang side and black/Yin side
x3=0.5*cos(t)-0.5;y3=0.5*sin(t);
x4=0.5*cos(t)+0.5;y4=-0.5*sin(t);

% Arrays for both outermost periphery and the border between Yang and Yin
bdx=[x3 x4 x];
bdy=[y3 y4 y];

% find the nearest grid point to (bdx,bdy) coordinates
% Credit: https://stackoverflow.com/questions/32481804/find-the-nearest-point-to-x-y-coordinates-on-mesh-matlab
for i=1:length(bdx)
d = (bdx(i)-X).^2+(bdy(i)-Y).^2; %// compute squared distances
[~, ind(i)] = min(d(:)); %// minimize distance and obtain (linear) index of minimum
%resultX(i) = X(ind); %// use that index to obtain the result
%resultY(i) = Y(ind);
end

T(ind)=0; % set to 0

% data outside the Taiji symbol are set to 0
d=((0-X).^2+(0-Y).^2).^0.5;
iout=find(d>1);
T(iout)=0;

% Then fill those NaNs by interpolation
TTT=inpaint_nans(T,3);

%% figure
[xt,yt]=meshgrid(-2:0.004:2,-2:0.004:2);
[xx,yy]=meshgrid([-2:0.05:2],[-2:0.05:2]);
figure;

h1=subplot(1,2,1);
T=exp((-(xx.^2+yy.^2)/0.85/0.85)); % 2D Gaussian Function
contour(xx,yy,T,[0.01 0.1 0.2:0.2:1],'k');
title('Gaussian-shape monopole pattern','fontweight','bold');
axis equal

h2=subplot(1,2,2);
contour(xt,yt,TTT,[0.01 0.2:0.2:1],'k');hold on;axis equal
contour(xt,yt,TTT,[0.01 0.1 0.2:0.2:1],'k');
contour(xt,yt,TTT,[-1:0.2:-0.2 -0.1 -0.01],'k--');
x2=0.2*cos(tt)+1;y2=0.2*sin(tt);
plot(x2,y2,'k--');
title('Dipole pattern generated based on Taiji with Inpaint\_nans,3','fontweight','bold');

%% Cross correlation between idealized dipole SSTA pattern and its duplicate but conterclockwise rotated

for i=0:1:360
    ccc(i+1)=corr2(TTT,imrotate(TTT,i,'crop'));
end

figure;plot(0:360,ccc);

