function DrawCantor(n)
    output = zeros(10 * n + 1, 3 ^n) + 255;
    for i = 0:n
        output(10 * i + 1, :) = generateLine(i, 3 ^n);
    end
    imwrite(output, 'cantor.bmp');
end

function ret = generateLine(n, length)
    if n == 0
        ret = zeros(1, length);
    else
        segment = generateLine(n - 1, length / 3);
        ret = [segment zeros(1, length/3) + 255 segment];
    end
end

