clc
funcprot(0)
format('v',10)
A = input("Enter the coefficient matrix[NxN]: ");
b = input("Enter the constant matrix[Nx1]: ");

function [x] = gaussian_elim(A,b)
    
    //base condition
    [n,n1] = size(A);
    [m1,p] = size(b);
    
    if n~= m1 then
        error('Incompatible Dimensions of A and b');
        abort;
    elseif n~= n1 then
        error('for gaussian_elimination Matrix A must be square')
        abort;
    end
    
    aug_mat = [A b];
    n = length(b)
    
    //forward elimination
    for j=1:n-1
        for i=j+1:n
            aug_mat(i,j:n+1) = aug_mat(i,j:n+1) - aug_mat(i,j)/aug_mat(j,j)*aug_mat(j,j:n+1)
        end
    end
    disp(aug_mat,"Augmented Matrix after gaussian elimination");
    
    //backward substitution
     x = zeros(n,1);
    x(n) = aug_mat(n,n+1)/aug_mat(n,n);
    for i=n-1:-1:1
        x(i) = (aug_mat(i,n+1) - aug_mat(i,i+1:n)*x(i+1:n))/aug_mat(i,i);
    end
    //disp(aug_mat,"Augmented Matrix after backward subs");
    disp(x(3),x(2),x(1),'The values of x , y, z --> ');
    
endfunction

//callers
gaussian_elim(A,b)

//201800157
