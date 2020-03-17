clc
funcprot(0)   //do nothing if variables are redefined 
format('v',10)
mat = input("Enter a matrix:: ")

function col_space(mat)
    
    disp(mat,"The matrix mat = ")

    disp("Down below are basic row operations");

    mat(2,:) = mat(2,:) - (mat(2,1)/mat(1,1))*mat(1,:)
    disp(mat)
    mat(3,:) = mat(3,:) - (mat(3,1)/mat(1,1))*mat(1,:)
    disp(mat)
    mat(3,:) = mat(3,:) - (mat(3,2)/mat(2,2))*mat(2,:)
    disp(mat)
	
    mat(1,:) = mat(1,:)/mat(1,1) //makes 1st pivot 1
    mat(2,:) = mat(2,:)/mat(2,2) //makes 2nd pivot 1
    disp(mat,"Row Reduced form = ")
    
    [m, n] = size(mat)
    for i=1:m
        for j=i:n
            if(mat(i,j)<>0)
                disp('is a pivot column',j,'column')
                break
            end
        end
    end
        
endfunction

//callers here
col_space(mat)

//201800157
