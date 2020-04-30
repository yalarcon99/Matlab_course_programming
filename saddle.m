%Saddle Points
%Author: Yithzak Alarcon
function indices = saddle(M)
    ind = [];
    M_saddle = 0*M; n = 0;
    fil = max(M,[],2);
    col = min(M,[],1);
    for i = 1:size(M,1)
        for j = 1:size(M,2)
            if(M(i,j)>=fil(i))
                M_saddle(i,j) = M_saddle(i,j)+1; 
            end
            if(M(i,j)<=col(j))
                M_saddle(i,j) = M_saddle(i,j)+1;
            end
            if(M_saddle(i,j)==2)
                %Consider preallocate the matrix 'ind'
                ind = [ind; [i j]]; n = n + 1;
            end
        end
    end
    if(n==0)
        indices = [];
    else
        indices = ind;
    end
end