clc
clear

%% Analysis 1-Reciever Diamter
clc
clear

Pt=75;
Dt=0.2; %D transmitted (m)
lambda=1550*10^-9; %m
Dr=0.5:0.5:15; %D recieved
L=0.4*1.496*10^11; %range meters
gamma=0.35; %obscuration ratio
No=0.3; %tranmitter optics efficiency
Np=0.3;%transmitter pointing efficiency 
la=0.79 ;%Atmosperic losses
Nr=0.45; %Reciever optics efficiency
s=20; %sensitivity
 

if la>1
    fprintf('la must be between 0 and 1 for negative dB\n')
    return
end

[DRMb,ladB]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s);

DRMb1=DRMb;

Pt=75;
Dt=0.2; %D transmitted (m)
lambda=1000*10^-9; %m
Dr=0.5:0.5:15; %D recieved
L=0.4*1.496*10^11; %range meters
gamma=0.35; %obscuration ratio
No=0.3; %tranmitter optics efficiency
Np=0.3;%transmitter pointing efficiency 
la=0.79 ;%Atmosperic losses
Nr=0.45; %Reciever optics efficiency
s=20; %sensitivity
 

if la>1
    fprintf('la must be between 0 and 1 for negative dB\n')
    return
end

[DRMb,~]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s);

hold on

plot(Dr,DRMb)

figure(1)
plot(Dr,DRMb1)
set(findall(gcf,'type','line'),'linewidth',2)
xlabel('Reciever Diameter (m)')
ylabel('Data rate (Mbit/s)')
legend('1000nm','1550nm')
title('Data rate vs Reciever Diameter')
grid minor

%% Analysis 2.2-Reciever Sensitivity
clc
clear

Pt=75;
Dt=0.2; %D transmitted (m)
lambda=1550*10^-9; %m
Dr=5; %D recieved
L=0.4*1.496*10^11; %range meters
gamma=0.35; %obscuration ratio
No=0.3; %tranmitter optics efficiency
Np=0.3;%transmitter pointing efficiency 
la=0.79 ;%Atmosperic losses
Nr=0.45; %Reciever optics efficiency
s=20:-1:1; %sensitivity
 

if la>1
    fprintf('la must be between 0 and 1 for negative dB\n')
    return
end

[DRMb,ladB]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s);

DRMb1=DRMb;

Pt=75;
Dt=0.2; %D transmitted (m)
lambda=1000*10^-9; %m
Dr=5; %D recieved
L=0.4*1.496*10^11; %range meters
gamma=0.35; %obscuration ratio
No=0.3; %tranmitter optics efficiency
Np=0.3;%transmitter pointing efficiency 
la=0.79 ;%Atmosperic losses
Nr=0.45; %Reciever optics efficiency
s=20:-1:1; %sensitivity
 

if la>1
    fprintf('la must be between 0 and 1 for negative dB\n')
    return
end

[DRMb,~]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s);

hold on

plot(s,DRMb)

figure(1)
plot(s,DRMb1)
set(findall(gcf,'type','line'),'linewidth',2)
xlabel('Reciever Sensitivity (photons/bit)')
ylabel('Data rate (Mbit/s)')
legend('1000nm','1500nm')
title('Data rate vs Reciever Sensitivity')
grid minor

hold off



%% Analysis 2- Atmospheric attenuation
clc
clear

Pt=75;
Dt=0.2; %D transmitted (m)
lambda=1550*10^-9; %m
Dr=12; %D recieved
L=0.4*1.496*10^11; %range meters
gamma=0.35; %obscuration ratio
No=0.3; %tranmitter optics efficiency
Np=0.3;%transmitter pointing efficiency 
la=linspace(0,1,1000); %Atmosperic losses
Nr=0.45; %Reciever optics efficiency
s=20; %sensitivity
 

if la>1
    fprintf('la must be between 0 and 1 for negative dB')
end

[DRMb,ladB]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s);

ladB1=ladB*-1;

plot(ladB1,DRMb)

Pt=75;
Dt=0.2; %D transmitted (m)
lambda=1000*10^-9; %m
Dr=12; %D recieved
L=0.4*1.496*10^11; %range meters
gamma=0.35; %obscuration ratio
No=0.3; %tranmitter optics efficiency
Np=0.3;%transmitter pointing efficiency 
la=linspace(0,1,1000); %Atmosperic losses
Nr=0.45; %Reciever optics efficiency
s=20; %sensitivity
 

if la>1
    fprintf('la must be between 0 and 1 for negative dB')
end

[DRMb,ladB]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s);

ladB2=ladB*-1;

hold on

plot(ladB2,DRMb)
set(findall(gcf,'type','line'),'linewidth',2)
xlabel('Atmospheric Attenuation dB')
ylabel('Data rate (Mbit/s)')
legend('1550nm','1000nm')
title('Data rate vs Atmospheric Attenuation')
grid minor

hold off

%% Beam Divergence

clc
clear


%% Choosing Wavelength

clc
clear

Pt=75;
Dt=0.2; %D transmitted (m)
lambda=linspace(2000*10^-9,500*10^-9,15); %m
Dr=12; %D recieved
L=0.4*1.496*10^11; %range meters
gamma=0.35; %obscuration ratio
No=0.3; %tranmitter optics efficiency
Np=0.3;%transmitter pointing efficiency 
la=0.79; %Atmosperic losses
Nr=0.45; %Reciever optics efficiency
s=20; %sensitivity
 

if la>1
    fprintf('la must be between 0 and 1 for negative dB')
end

[DRMb,ladB]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s);

ladB1=ladB*-1;

plot(lambda,DRMb)
set(findall(gcf,'type','line'),'linewidth',2)
xlabel('Wavelength(nm)')
ylabel('Data rate (Mbit/s)')
title('Data rate vs Wavelength')
grid minor

%%





