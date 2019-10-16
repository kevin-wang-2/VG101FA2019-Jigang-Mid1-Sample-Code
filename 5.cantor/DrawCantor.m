function DrawCantor(n)
    % REQUIRES: n >= 0
    % MODIFIES: cantor.bmp, to generate a cantor line set in the graph
    % Use recursion to generate fractal is very convenient, so I make usse
    % of this technique.
    
    % This width of the graph could enable the smallest cantor segment to
    % be a pixel, and the height will enable us to see the cantor lines
    % clearly
    output = zeros(10 * n + 1, 3 ^n) + 255; % Get a white graph
    
    for i = 0:n % Generate line by line
        output(10 * i + 1, :) = generateLine(i, 3 ^n);
    end
    
    imwrite(output, 'cantor.bmp'); % Output the image
end

function ret = generateLine(n, length)
    if n == 0 % Recursion end flag, and this will generate a whole line
        ret = zeros(1, length);
    else
        segment = generateLine(n - 1, length / 3); % This will generate a cantor subset, that is kind of similar to the graph, but the length is shorter
        ret = [segment zeros(1, length/3) + 255 segment]; % Put two identical subsets apart, we could get this cantor line
    end
end

