function out = My_imresize (I)

    [row, col] = size(I);

    result = zeros (row*2, col*2);
    
    l=1;
    p=1;
    
    for i=1: 1: row*2
        for j=1: 1: col*2
            if mod (i, 2) == 1
               if mod (j, 2) == 1
                   result(i, j) = I(p, l);
                   l=l+1;
                   
                   if l == row +1
                      l=1;
                      p=p+1;
                   end
               end
            end
        end
    end


    for i=1: 1: row*2
        for j=1: 1: col*2
           if mod (i, 2) == 0
               if mod (j, 2) == 1
                   if i == 2*row
                       result(i, j) = result(i-1, j);
                   else
                       result(i, j) = (result(i-1, j) + result(i+1, j))/2;
                   end
               end
           end      
        end
    end

    for i=1: 1: row*2
        for j=1: 1: col*2
           if mod (i, 2) == 1
               if mod (j, 2) == 0
                   if j == 2*col
                       result(i, j) = result(i, j-1);
                   else
                       result(i, j) = (result(i, j-1) + result(i, j+1))/2;
                   end
               end
           end      
        end
    end

    for i=1: 1: row*2
        for j=1: 1: col*2
           if mod (i, 2) == 0
               if mod (j, 2) == 0
                   if i == 2*row
                       if j == 2*col
                           result(i, j) = (result(i, j-1)+result(i-1, j))/2;
                       else
                           result(i, j) = (result(i-1, j)+result(i, j-1)+result(i, j+1))/3;
                       end
                   elseif j == 2*row
                       result(i, j) = (result(i-1, j)+result(i+1, j)+result(i, j-1))/3;
                   else
                       result(i, j) = (result(i-1, j)+result(i+1, j)+result(i, j-1)+result(i, j+1))/4;
                   end
               end
           end      
        end
    end

    out = cast(result, class(I));
end