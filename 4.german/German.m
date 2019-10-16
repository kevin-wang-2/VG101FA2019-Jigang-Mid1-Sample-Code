function German(filename)
    % REQUIRES: valid filname
    % MODIFIES: German_$filename$ that is the german version of $filename$
    fin = fopen(filename, 'r');
    fout = fopen(['German_' filename], 'w');
    
    while ~feof(fin) % Read the file line by line
        line = fgetl(fin);
        
        for character = line % Read every character
            switch character - '0' % Evaluate the characters
                case 0
                    fprintf(fout, 'null ');
                case 1
                    fprintf(fout, 'eins ');
                case 2
                    fprintf(fout, 'zwei ');
                case 3
                    fprintf(fout, 'drei ');
                case 4
                    fprintf(fout, 'vier ');
                case 5
                    fprintf(fout, 'funf ');
                case 6
                    fprintf(fout, 'sechs ');
                case 7
                    fprintf(fout, 'sieben ');
                case 8
                    fprintf(fout, 'acht ');
                case 9
                    fprintf(fout, 'neun ');
            end
        end
        
        if ~feof(fin) % Add line change, if the file is ended, we will not add this \n
            fprintf(fout, '\n');
        end
    end
    
    fclose(fin);
    fclose(fout);
end