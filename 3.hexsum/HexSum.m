function ret = HexSum(str)
    ret = dec2hex(sum(hex2dec(split(str, ' '))));
end