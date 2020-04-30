%Char counter
%Author: Yithzak Alarcon
function charnum = char_counter(fname, ch)
    fid = fopen(fname, 'r');
    if(fid < 0 || ~ischar(ch))
        charnum = -1; return;
    end
    [A, n] = fscanf(fid, '%c');
    charnum = count(A, ch);
    fclose(fid);
end