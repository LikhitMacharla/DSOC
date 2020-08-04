function [DRMb,ladB]=Realoptical(Pt,Dt,lambda,Dr,L,gamma,No,Np,la,Nr,s)
%powerdB

PtdB=10*log10(Pt*1000);

%transmitter gain

Gt=10*log10((pi*Dt./lambda).^2); %db

%tranmitter optics efficiency
if No<=0
    NodB=0;
else
NodB=10*log10(No);
end
    
%transmitter pointing efficiency db
if Np<=0
    NpdB=0;
else
NpdB=10*log10(Np);
end

%space loss
ls=10*log10((lambda/(4*pi*L)).^2); %dB

%Atmospheric Loss

if la<=0
    ladB=0;
else
ladB=10*log10(la);
end

%reciever gain

Gr=10*log10(((pi*Dr)./lambda).^2+log10(1-gamma^2));

%Reciever optics efficiency
if Nr<=0
    NrdB=0;
else
NrdB=10*log10(Nr);
end

%recieved Symbol power

PrdB=PtdB+Gt+NodB+NpdB+ls+ladB+Gr+NrdB;

Pr=(10.^(PrdB/10))/1000; %dbm to watts

 h=6.626*10^-34;
 c=2.998*10^8;

N=((Pr.*lambda)/(h*c)); %photons per sec

%data rate

DR=(1./s)*N; %bit/s
DRMb=DR/1000000;

end


