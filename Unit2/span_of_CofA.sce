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
/*
SAMPLE OUTPUT FOR [1,2,3;4,5,6;7,8,9]
 The matrix mat = 

   1.   2.   3.
   4.   5.   6.
   7.   8.   9.

 Down below are basic row operations

   1.   2.   3.
   0.  -3.  -6.
   7.   8.   9.

   1.   2.   3. 
   0.  -3.  -6. 
   0.  -6.  -12.

   1.   2.   3.
   0.  -3.  -6.
   0.   0.   0.

 Row Reduced form = 

   1.   2.   3.
   0.   1.   2.
   0.   0.   0.

 column

   1.

 is a pivot column

 column

   2.

 is a pivot column
*/
