function  setPos(fig,pos)
        tmp = get(fig,'Position');
        set(fig,'Position',[pos(1),pos(2),tmp(3),tmp(4)])
end

