function addText(fig,relativePosition,txt)

axes = findall(fig,'type','axes');

yl = ylim(axes);
xl = xlim(axes);

ylen = yl(2) - yl(1);
xlen = xl(2) - xl(1);

xofst = xlen*relativePosition(1);
yofst = ylen*relativePosition(2);

X = xl(1) + xofst;
Y = yl(1) + yofst;

t = text(axes,X,Y,txt);
set(t,'VerticalAlignment','bottom')
toStandart(fig)