%Sparse to Matrix
%Author: Yithzak Alarcon
function m = sparse2matrix(v)
    m(1:v{1}(1),1:v{1}(2)) = v{2};
    for i = 3:size(v,2)
        m(v{i}(1),v{i}(2)) = v{i}(3);
    end
end