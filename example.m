clear, clc
addpath('./stplot')

% ƒл€ инициализации график используетс€ конструктор stplot
% и передаютс€ пары значений X Y.
% ƒл€ инициализации коодинатный пр€мых используйте initOriginAxes или
% initBottomAxes.

try
    
    X1 = -10:0.01:10;
    Y1 = sin(X1); 
    
    X2 = 0:0.01:20;
    Y2 = 2*cos(X2+1);
    
    t = stplot(X1,Y1,X2,Y2);
    t.initOriginAxes()
    
catch ex
    id = fopen('./log.txt','w');
    fprintf(id,"%s",ex.message);
    fclose(id);
end

% ћетоды setSize и setPos задают положение и размер графика соответственно.
% stXlabel и stYlabel задают подписи координатных осей
% stLegend задаЄт легенду (дл€ установки нескольких легенд передавйте
% массив строк).

try
    
    sys = tf([0.1 1], [1 0.5 1]);
    [v, t] = step(sys);
       
    t = stplot(t,v);
    t.initBottomAxes()
    t.setSize([650,400])
    t.setPos([1250,558])
    t.stXlabel("Time, sec")
    t.stYlabel("Value")
    t.stLegend("Legend")
    
catch ex
    id = fopen('./log.txt','a');
    fprintf(id,"%s",ex.message);
    fclose(id);
end

% setStdSize устанавливает ширину фигуры 620 и разрешение 16/9,
% данна€ ширина соответствует ширене типового документа Word.
% setName устанавливает им€ графика, под этим именем он будет сохран€тьс€.
% savePNG, saveEMF сохран€ют график в растровом формате PNG и в векторном
% формате EMF соответственно.
%getHandle возвращает объект фигуры.

try
    
    sys = tf(1, [1 7 21 35 35 21 7 1]);
    [v, t] = step(sys);

   
    t = stplot(v,t);
    t.initOriginAxes()
    t.setStdSize()
    t.setPos([60,558])
    t.setName("Wired")
    t.savePNG()
    t.saveEMF()
    
    f = t.getHandle() %#ok<NOPTS>
    
catch ex
    id = fopen('./log.txt','a');
    fprintf(id,"%s",ex.message);
    fclose(id);
end

