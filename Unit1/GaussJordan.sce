clc
funcprot(0)   //if variables are redefined do nothing
format('v',20)
mat = input("Enter a matrix, mat of order: [NxN] ")

function gauss_jordan(mat)
    
    n = length(mat(1,:));
    aug_mat = [mat,eye(n,n)];
    // 1st Forward then backward elimination

    //forward elimination
    for j=1:n-1
            for i=j+1:n
                aug_mat(i,j:2*n) = aug_mat(i,j:2*n) - aug_mat(i,j)/aug_mat(j,j)*aug_mat(j,j:2*n)
            end
    end
    

    //backward elimination
    for j=n:-1:2
            aug_mat(1:j-1,:) = aug_mat(1:j-1,:) - aug_mat(1:j-1,j)/aug_mat(j,j)*aug_mat(j,:)
    end
    

    //Diagonal Normalization
    for j=1:n
            aug_mat(j,:) = aug_mat(j,:) / aug_mat(j,j);
    end
    

    mat_inv = aug_mat(:,n+1:2*n);
    disp(mat_inv,'The Inverse of mat is ');
    
endfunction

//callers
gauss_jordan(mat)

//201800157
