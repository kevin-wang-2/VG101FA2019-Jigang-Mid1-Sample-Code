function ret = FindDisarium(N)
    if N == 0
        ret = 0;
    else
        ret = 0;
        for i = 1:N
            cur = i;
            sum = 0;
            cnt = 0;
            flag = 1;
            lenCur = floor(log10(cur)) + 1;
            while cur > 0
                digit = mod(cur, 10);
                sum = sum + digit ^ (lenCur - cnt);
                if sum > i
                    flag = 0;
                    break;
                end
                cnt = cnt + 1;
                cur = floor(cur / 10);
            end
            if sum < i
                flag = 0;
            end
            if flag
                ret = [ret i];
            end
        end
    end
end