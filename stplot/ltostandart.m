function ltostandart(fig)

text = findall(fig,'type','text');
set(text,'fontSize',14,'FontName','Times New Roman')

axes = findall(fig,'type','axes');
set(axes,'fontSize',14,'FontName','Times New Roman','LineWidth',2)

styles = ["-", "- -", ":", "-."];

h = findobj(axes,'Type','line');
set(h,'color','k','LineWidth',2)

L = length(h);
if L > 4 L=4 ;end %#ok<SEPEX>

for i = 1:L
    set(h(i),'LineStyle', styles(i))
end

grid on

