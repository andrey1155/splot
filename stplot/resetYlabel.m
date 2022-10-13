function resetYlabel(fig)

    
    axes = findall(fig,'type','axes');
    hYLabel = get(axes,'YLabel');
    set(hYLabel,'rotation',0,'VerticalAlignment','top','HorizontalAlignment','right')
    
    xt =  get(axes,'Xtick');
    yt =  get(axes,'Ytick');
    
    Xmin = xt(1);
    Ymax = yt(end);
    
    a = get(hYLabel,'Position')   
    
    a(1) = Xmin + 0.01*Xmin;
    a(2) = Ymax;
    
    set(hYLabel,'Position',a)   