%Written by Tejas S. Niphadkar.
%The Code is opensource and can be modified,distributed or may directly be
%used in any project.

classdef eulerGraph
    properties
        graphInp, oddVertex ;
    end
    methods
        function obj = eulerGraph(edges)
            obj.graphInp=edges;
        end
        function isIt = isEuler(obj)
        nRows = size(obj.graphInp,1);
        oddVertexCount=0;
        %returns 1 if Euler's Path , 2 if Euler's Circuit , 0 if NONE.
        %Function Assumes that graph is connected.If not, a simple dfs will do.
        for i=1:1:nRows
            sumRow = sum(obj.graphInp(i,:));
            if mod(sumRow,2)~=0
                oddVertexCount = oddVertexCount+ 1;
                obj.oddVertex = i ;
            end
        end
        if oddVertexCount==0
            isIt=2;
        elseif oddVertexCount == 2
            isIt=1;
        else
            isIt=0;
        end
        end
        function rmv = rmvEdge(obj,u,v)
            obj.graphInp(u,v) = -1;
            rmv = obj.graphInp(u,v);
        end
        function addedg = addEdge(obj,u,v)
            obj.graphInp(u,v) = 1;
            addedg = obj.graphInp(u,v);
        end
    end
end
    