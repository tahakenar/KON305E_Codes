%%
% plot a root locus using the symbolic toolbox

clear all; clc;

syms s;
Gss = 1/((s+1)*(s+2)*(s+3));

syms k;
Tss = k*Gss/(1+k*Gss);

[n,d] = numden(Tss);

figure(1); clf; hold on;

for kv=0:1:90
    
    pzeros = roots(coeffs(subs(n,k,kv),s,'all'));
    pzeros = double(pzeros);
    
    poles = roots(coeffs(subs(d,k,kv),s,'all'));
    poles = double(poles);
    
    for i=1:length(pzeros)
        plot(real(pzeros(i)),imag(pzeros(i)),'-k.');
    end
    for i=1:length(poles)
        plot(real(poles(i)),imag(poles(i)),'-k.');
    end
end

plot([-6,6],[0,0],'b--','LineWidth',0.2);
plot([0,0],[-4,4],'b--','LineWidth',0.2);

xlabel('Re');
ylabel('Im');
title('Pole-zero map');

r = 4;
for zeta = 0:0.2:1
    beta = atan(sqrt(1-zeta^2)/zeta);
    plot([0,-r/tan(beta)],[0,r],'b-.','LineWidth',0.2); 
    plot([0,-r/tan(beta)],[0,-r],'b-.','LineWidth',0.2); 
    plot([0,r/tan(beta)],[0,r],'b-.','LineWidth',0.2); 
    plot([0,r/tan(beta)],[0,-r],'b-.','LineWidth',0.2);
end

for wn = 1:4
    for theta = 0:0.1:2*pi
        plot([wn*cos(theta),wn*cos(theta+0.1)],[wn*sin(theta),wn*sin(theta+0.1)],'b-.','LineWidth',0.2);
    
    end
end

%%
clear all;clc;

Gs = tf(3,[1 9 29 44 36 16]);

[poles,gain] = rlocus(Gs,logspace(-2,2,400));

figure(1);clf;hold on;

czeros = roots(Gs.numerator{:});

for i=1:length(czeros)
    plot(real(czeros(i)),imag(czeros(i)),'ko');
end

for i=1:length(poles(:,1))
    plot(real(poles(i)),imag(poles(i)),'kx');
end


for i=1:length(gain)-1
    for j=1:length(poles(:,1))
        p1=poles(j,i);
        p2=poles(j,i+1); plot([real(p1),real(p2)],[imag(p1),imag(p2)],'k','LineWidth',2); 
    end
end
    
title('Root locus plot of Gs'); 
xlabel('Real axis (seconds^{-1})'); 
ylabel('Imaginary axis (seconds^{-1})');

