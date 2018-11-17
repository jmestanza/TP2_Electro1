syms VGS3;
syms VCC;
syms R2;
syms alpha;
syms VTH;
syms I;
syms I4;
syms VA;

%pol = alpha*((VCC - 2*I*R2-VTH)^2)-2*I;
%sols=solve(pol,I)

pol = alpha*((VA-I4*RL-VTH)^2)-I4;
sols=solve(pol,I4)