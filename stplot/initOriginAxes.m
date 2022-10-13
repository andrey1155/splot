function initOriginAxes(fig)

axes = findall(fig,'type','axes');

xt =  get(axes,'Xtick');
yt =  get(axes,'Ytick');

Xmax = xt(end);
Xmin = xt(1);

Ymax = yt(end);
Ymin = yt(1);

xt = xt(1:end-1);
yt = yt(1:end-1);


set(axes, 'Xtick', xt, 'Ytick', yt, 'box', 'off', 'XAxisLocation', 'origin', 'YAxisLocation', 'origin')

xlen = Xmax - Xmin;
ylen = Ymax - Ymin;

xarrLen = 0.04*xlen;
xarrHgt = 0.02*ylen;

yarrLen = 0.04*ylen;
yarrHgt = 0.02*xlen;

axis([Xmin Xmax Ymin Ymax])
% xlim(axes,[Xmin-xarrLen/2 Xmax+xarrLen/2])
% ylim(axes,[Ymin-yarrLen/2 Ymax+yarrLen/2])

Xmin = 0;
Ymin = 0;

Ymax = Ymax + yarrLen*0.75;
Xmax = Xmax + xarrLen*0.75;
% Ymin = Ymin - yarrLen/2;
% Xmin = Xmin - xarrLen/2;

patch(axes,...
     [Xmax-xarrLen; Xmax-xarrLen; Xmax], ...
     [Ymin+xarrHgt; Ymin-xarrHgt; Ymin], 'k', 'clipping', 'off')
 
patch(axes,...
     [Xmin-yarrHgt; Xmin+yarrHgt; Xmin], ...
     [Ymax-yarrLen; Ymax-yarrLen; Ymax], 'k', 'clipping', 'off')
 
 %f.Position = [100 100 540 400];
