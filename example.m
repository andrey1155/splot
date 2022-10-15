clear, clc
addpath('./stplot')

% ��� ������������� ������ ������������ ����������� stplot
% � ���������� ���� �������� X Y.
% ��� ������������� ����������� ������ ����������� initOriginAxes ���
% initBottomAxes.


    
    X1 = -10:0.01:10;
    Y1 = sin(X1); 
    
    X2 = 0:0.01:20;
    Y2 = 2*cos(X2+1);
    
    t = stplot(X1,Y1,X2,Y2);
    t.initOriginAxes()


% ������ setSize � setPos ������ ��������� � ������ ������� ��������������.
% stXlabel � stYlabel ������ ������� ������������ ����
% stLegend ����� ������� (��� ��������� ���������� ������ ����������
% ������ �����).


    
    sys = tf([0.1 1], [1 0.5 1]);
    [v, t] = step(sys);
       
    t = stplot(t,v);
    t.initBottomAxes()
    t.setSize([650,400])
    t.setPos([10,20])
    t.stXlabel("Time, sec")
    t.stYlabel("Value")
    t.stLegend("Legend")
    


% setStdSize ������������� ������ ������ 620 � ���������� 16/9,
% ������ ������ ������������� ������ �������� ��������� Word.
% setName ������������� ��� �������, ��� ���� ������ �� ����� �����������.
% savePNG, saveEMF ��������� ������ � ��������� ������� PNG � � ���������
% ������� EMF ��������������.
%getHandle ���������� ������ ������.

    
    sys = tf(1, [1 7 21 35 35 21 7 1]);
    [v, t] = step(sys);

   
    t = stplot(v,t);
    t.initOriginAxes()
    t.setStdSize()
    t.setPos([700,20])
    t.setName("Wired")
    t.savePNG()
    t.saveEMF()
    
    f = t.getHandle() %#ok<NOPTS>
    
t.addText([0.5 0.65],'Seal is white')