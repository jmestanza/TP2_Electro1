% Bode TPL2 Electronica I%
clc;
pic = semilogx(Freq,Ratio,'color','red','linewidth',2);
hold on;
set(gca, 'FontName', 'Times New Roman', 'FontSize', 12);
xlabel('Frecuencia [Hz]');         
ylabel('|AV| [dB]');

for i=1:6257
    temp = sscanf(Vvo{i},'%f,%f');
    ratio_Sim(i) = 20*log10(sqrt((temp(1))^2 + (temp(2))^2));
end
pic = semilogx(freq_Sim,ratio_Sim,'color','blue','linewidth',2);
xlim([0.5 900000]);
ylim([5 30]);

title('Respuesta en frecuencia - Módulo');
legend('Medido','Simulado');
set(gcf,'PaperOrientation','landscape');
print('BodeModulo','-dpdf','-fillpage');