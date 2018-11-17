clear;
clc;
VCC= 12;
alpha= 22e-3;
R2=10e3;
R1=6.8e3;
R3=680e3;
RL=2.2e3;
Rp = (R3*RL)/(R3+RL);
%VTH = 1.86;
VTH = 0.96;

% I_a = -((4*R2*VCC*alpha - 4*R2*VTH*alpha + 1)^(1/2) - 2*R2*VCC*alpha + 2*R2*VTH*alpha - 1)/(4*R2^2*alpha);
% I_b =((4*R2*VCC*alpha - 4*R2*VTH*alpha + 1)^(1/2) + 2*R2*VCC*alpha - 2*R2*VTH*alpha + 1)/(4*R2^2*alpha);
% VGS3_a = VCC - 2*I_a*R2;
% VGS3_b = VCC - 2*I_b*R2;
I=0.496e-3;
I4_a = (4400*(VCC - I*R1)*alpha - 4400*VTH*alpha + (8800*(VCC - I*R1)*alpha - 8800*VTH*alpha + 1)^(1/2) + 1)/(9680000*alpha)
I4_b = (4400*(VCC - I*R1)*alpha - 4400*VTH*alpha - (8800*(VCC - I*R1)*alpha - 8800*VTH*alpha + 1)^(1/2) + 1)/(9680000*alpha)

VGS4_a = VCC - I*R1 - I4_a*RL
VGS4_b = VCC - I*R1 - I4_b*RL

if((VGS4_a-VTH)>(VGS4_b-VTH))
    fprintf('VGS3_a tiene mayor VDS')
end
VGSPOSTA = max(abs(VGS4_a),abs(VGS4_b))


