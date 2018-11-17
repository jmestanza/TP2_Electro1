% Bode TPL2 Electronica I%
clc;
pic = semilogx(Freq,Phase,'color','red','linewidth',2);
hold on;
set(gca, 'FontName', 'Times New Roman', 'FontSize', 12);
xlabel('Frecuencia [Hz]');         
ylabel('Fase [°]');

for i=1:6257
    temp = sscanf(Vvo{i},'%f,%f');
    ratio_Sim(i) = atan(temp(2)/temp(1));
end
pic = semilogx(freq_Sim,ratio_Sim,'color','blue','linewidth',2);
xlim([0.5 900000]);
ylim([-50 80]);

title('Respuesta en frecuencia - Fase');
legend('Medido','Simulado');
set(gcf,'PaperOrientation','landscape');
print('BodeFase','-dpdf','-fillpage');