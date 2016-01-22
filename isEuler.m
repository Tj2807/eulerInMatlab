function isIt = isEuler( edges)
    nRows = size(edges,1);
    oddVertexCount=0;
    %nCols =  size(edges,2)
    for i=1:1:nRows
        sumRow = sum(edges(i,:));
        if sumRow%2 !=0
            oddVertexCount = oddVertexCount+ 1;
        end
    end
    if oddVertexCount==0||oddVertexCount==1
        isIt=1;
    else
        isIt=0;
end

    
