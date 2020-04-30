%Minimum and maximum
%Author: Yithzak Alarcon
function [a,b] = minimax(M)
    n = size(M,1);
    maxs = max(M,[],2);
    mins = min(M,[],2);
    diff = abs(maxs-mins);
    a = diff';
    maxn = max(M,[],'all');
    minn = min(M,[],'all');
    b = maxn - minn;
end