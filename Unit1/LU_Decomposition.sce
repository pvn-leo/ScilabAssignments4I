clc
funcprot(0)
format('v',10)
mat = input("Enter a matrix, mat of order[N X N]: ")

function lu_decomposition(mat)
    
    U = mat;
    disp(mat,"The given matrix is mat = ")
    m = det(U(1,1)); 
    n = det(U(2,1));
    mat=n/m; //l21
    
    U(2,:) = U(2,:) - U(1,:)/(m/n);
    n= det(U(3,1));
    p=n/m; //l31
    
    U(3,:) = U(3,:) - U(1,:)/(m/n);
    m = det(U(2,2));
    n = det(U(3,2));
    q = n/m; //l32
    
    L = [1,0,0;mat,1,0;p,q,1];
    disp(L,'Lower Traingular Matrix L = ')
    
    U(3,:) = U(3,:) - U(2,:)/(m/n);
    disp(U,'Upper Traingular Matrix U = ')
    
endfunction

//callers
lu_decomposition(mat)

//201800157
