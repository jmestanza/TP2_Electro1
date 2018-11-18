% Medicion diferencial %

pic = plot(time,vin,'color','blue','linewidth',2);
hold on;
pic = plot(time,vout,'color','red','linewidth',2);

title('Medición par diferencial');
legend('CH1 - Entrada','CH2 - Salida');
set(gca, 'FontName', 'Times New Roman', 'FontSize', 12);
xlabel('Tiempo [s]');         
ylabel('Tension [V]');

set(gcf,'PaperOrientation','landscape');
print('OutDiferencial','-dpdf','-fillpage');