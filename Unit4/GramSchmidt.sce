clear;
 clc;
 
mat = input("Enter a matrix:: ")

disp(mat,'mat = ')
[m,n] = size(mat)

for k=1:n
    V(:,k) = mat(:,k)
    for j=1:k-1
        R(j,k) = V(:,j)'*mat(:,k)
        V(:,k) = V(:,k) - R(j,k)*V(:,j)
    end
    R(k,k) = norm(V(:,k))
    V(:,k) = V(:,k)/R(k,k)
end
disp(V,'Q = ')

//1201800157
