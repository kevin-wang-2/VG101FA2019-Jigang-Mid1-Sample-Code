function ret = HexSum(str)
    % REQUIRES: a list of hexadecimal numbers separated by ' '
    % RETURNS: the hexadecimal sum of the numbers
    % Using split function, we could simply separate tthe string into
    % pieces, and we could apply system function to any kind of arraies and
    % matrices (recall RC1), so this process doesn't need special care.
    ret = dec2hex(sum(hex2dec(split(str, ' '))));
end