classdef stplot < handle
    
   properties ( Access = private )
      handle
   end
   
   methods
       
      function obj = stplot(varargin)
          
         if mod(nargin,2) ~= 0
             error(['Error using plot' newline 'Data must be a single matrix Y or a list of pairs X,Y.'])
         end
         
         X = [];
         Y = [];
         
         for k=1:2:length(varargin)
            X = [X; varargin{k}];
            Y = [Y; varargin{k+1}];
         end
         
         X = transpose(X);
         Y = transpose(Y);
         
         obj.handle = st_plot(X,Y);
      end
      
      function setName(obj,name)
         set(obj.handle,'Name',name);
      end
      
      function stXlabel(obj,text)
          axes = findall(obj.handle,'type','axes');
          xlabel(axes,text)
      end
      
      function stYlabel(obj,text)
          axes = findall(obj.handle,'type','axes');
          ylabel(axes,text)
      end
      
      function initBottomAxes(obj)
          initBottomAxes(obj.handle)
      end
      
       function initOriginAxes(obj)
          initOriginAxes(obj.handle)
      end
      
      function stLegend(obj,leg)
          axes = findall(obj.handle,'type','axes');
          legend(axes,leg)
      end

      function setPos(obj,pos)
          setPos(obj.handle,pos)
      end
      
      function setSize(obj,s)
          setSize(obj.handle,s)               
      end
      
      function setStdSize(obj)
          setStdSize(obj.handle)
      end
      
      function savePNG(obj)
          savePNG(obj.handle)
      end
      
      function saveEMF(obj)
          saveEMF(obj.handle)
      end
      
      function r = getHandle(obj)
          r = obj.handle;
      end
      
      function addText(obj,position,txt)
          addText(obj.handle,position,txt)
      end
      
   end
   
end