clc
funcprot(0)   //if variables are redefined do nothing
format('v',10)
mat = input("Enter a matrix: ")// Sampe input [1,2,3;4,5,6;7,8,9]

function subspaces_4(mat_)
    
    disp(mat,'mat = ');
    [m,n] = size(mat);
    disp(m,'m = ','--------');
    disp(n,'n = ');
    [v,pivot] = rref(mat);
    disp(rref(mat),"Echelon Form = ",'--------')
    
    R = length(pivot)//calculating rank
    disp(R,'rank = ')
    
    RS = mat(:,pivot);//calculating column space
    disp('--------');
    disp(RS,'Column Space = ');
    
    NS = kernel(mat);//kernel aka NUll Space
    disp('--------');
    disp(NS,'Null Space = ');
    
    RS = mat(1:R,:)';
    disp('--------');
    disp(RS,'Row Space = ');
    
    LNS = kernel(mat');
    disp('--------');
    disp(LNS,'Left Null Space = '); 
    
endfunction

//callers
subspaces_4(mat)
//201800157
