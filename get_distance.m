%Get distance between countries
%Author: Yithzak Alarcon
function res = get_distance(a,b)
    [dis, names] = xlsread('Distances.xlsx');
    a_pos = strfind(names, a);
    b_pos = strfind(names, b);
    for i = 1:size(a_pos,2)
        if(a_pos{1,i}==1)
            ii = i; break;
        else
            ii = -1;
        end
    end
    for j = 1:size(b_pos,1)
        if(b_pos{j,1}==1)
            jj= j; break;
        else
            jj = -1;
        end
    end
    if(ii==-1 || jj ==-1)
        res = -1;
    else
        res = dis(ii-1,jj-1); 
end