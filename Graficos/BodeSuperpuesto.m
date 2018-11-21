% Bode TPL2 Electronica I%
clc;
% pic = semilogx(Freq,Ratio,'color','red','linewidth',2);
% hold on;

for i=1:3001
    temp = sscanf(Vvo{i},'%f,%f');
    ratio_Sim(i) = 20*log10(sqrt((temp(1))^2 + (temp(2))^2));
end
pic = semilogx(freq_Sim,ratio_Sim,'color','blue','linewidth',2);
xlim([1000 1000000]);
ylim([20 30]);
grid on;
title('Respuesta en frecuencia - Módulo');
legend('Simulado');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 12);
xlabel('Frecuencia [Hz]');         
ylabel('|AV| [dB]');
grid on;
set(gcf,'PaperOrientation','landscape');
print('BodeModuloSimple','-dpdf','-fillpage');