%Trio Matrix
%Author: Yithzak Alarcon
function T = trio(n,m)
    fils = 3*n;
    cols = m;
    num = ceil(fils/3);
    T(1:num,1:cols) = 1;
    T(num+1:fils-num,1:cols) = 2;
    T(fils-num+1:fils,1:cols) = 3;
end