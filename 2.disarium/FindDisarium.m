function ret = FindDisarium(N)
    % REQUIRES: N >= 0
    % RETURNS: The list of positive disarium numbers that is less than or
    % equal N.
    % The disarium number could be determined by testng the number's sum
    % digit by digit.
    if N == 0 % Boundary case
        ret = 0;
    else
        ret = 0;
        for i = 1:N % Use a loop to go through all the numbers
            cur = i; % Prevent the loop variable from being modified
            sum = 0; % The sum
            cnt = 0; % Loop counter to calculate the powe
            flag = 1; % Flag to indicate whether this number could be a disarium
            
            lenCur = floor(log10(cur)) + 1; % Get the digits of number, it's safe because 0 case has been processed before
            
            while cur > 0
                digit = mod(cur, 10); % Take every digit of number to examine
                
                sum = sum + digit ^ (lenCur - cnt); % Take power and add to the sum
                
                if sum > i % Pre-test, it can lower the complexity
                    flag = 0;
                    break;
                end
                
                cnt = cnt + 1; % Update loop variables
                cur = floor(cur / 10);
            end
            
            if sum < i % Test the sum, the > case is dealed in the loop
                flag = 0;
            end
            
            if flag % Add the number to the list
                % TODO: Use mathematics to calculate the length of the
                % list and speed up the memory allocation.
                ret = [ret i];
            end
        end
    end
end