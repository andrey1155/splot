function setSize(fig,s)
          tmp = get(fig,'Position');
          set(fig,'Position',[tmp(1),tmp(2),s(1),s(2)])      
end

